

;; Configuration for running MO go project
(dap-register-debug-template "C_Go_mo_configuration"
                             (list :type "go"
                                   :request "launch"
                                   :name "Launch File"
                                   :mode "auto"
                                   :program nil
				   :buildFlags nil
                                   :args nil
                                   :envFile "/Users/harishbohara/workplace/env/mo_dev.env"))
