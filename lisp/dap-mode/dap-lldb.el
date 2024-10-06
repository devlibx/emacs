;;; dap-lldb.el --- Debug Adapter Protocol mode for LLDB      -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Daniel Martín

;; Author: Daniel Martín <mardani29@yahoo.es>
;; Keywords: languages

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;; Adapter for https://github.com/llvm-mirror/lldb/tree/master/tools/lldb-vscode

;;; Code:

(require 'dap-mode)

(defcustom dap-lldb-debug-program `(,(expand-file-name "/opt/homebrew/opt/llvm/bin/lldb"))
  "The path to the LLDB debugger."
  :group 'dap-lldb
  :type '(repeat string))

(defcustom dap-lldb-debugged-program-function 'buffer-file-name
  "The function to get the path of the file to be debugged."
  :group 'dap-lldb
  :type 'symbol)

;; This is the setting which is the main entry for lldb-vscode
(defun dap-lldb--populate-start-file-args (conf)
  "Populate CONF with the required arguments."
  (-> conf
      (dap--put-if-absent :dap-server-path dap-lldb-debug-program)
      (dap--put-if-absent :type "lldb-vscode")
      (dap--put-if-absent :cwd default-directory)
      (dap--put-if-absent :program (if (commandp dap-lldb-debugged-program-function)
                                       (call-interactively dap-lldb-debugged-program-function)
                                     (funcall dap-lldb-debugged-program-function)))
      (dap--put-if-absent :name "LLDB Debug")))

;; This is the setting which is the main entry for lldb-tests
;; This is added so that it can ask for test program
(defun dap-lldb-test--populate-start-file-args (conf)
  "Populate CONF with the required arguments."
  (-> conf
      (dap--put-if-absent :dap-server-path dap-lldb-debug-program)
      (dap--put-if-absent :type "lldb-test")
      (dap--put-if-absent :cwd default-directory)
      (dap--put-if-absent :program (read-file-name "Select test program: "))
      (dap--put-if-absent :name "LLDB Debug")))


(eval-after-load "dap-mode"
  '(progn
     (dap-register-debug-provider "lldb-vscode" 'dap-lldb--populate-start-file-args)
     (dap-register-debug-provider "lldb-test" 'dap-lldb-test--populate-start-file-args)))

(provide 'dap-lldb)
;;; dap-lldb.el ends here
