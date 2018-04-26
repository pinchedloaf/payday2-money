if not Money then
    Money = {}
    Money.ModPath = ModPath
end

--Add localized strings for menu
Hooks:Add("LocalizationManagerPostInit", "money_MenuLocalization", function(loc)
	loc:load_localization_file(Money.ModPath .. "/menu/loc.json")
end)

--Initialize menu
Hooks:Add("MenuManagerInitialize", "money_MenuManagerInitialize", function(menu_manager)
    
    -- Remove
    MenuCallbackHandler.callback_money_remove_one_million_offshore = function()

        local confirm_title = "Confirm offshore removal"
        local confirm_message = "Are you sure you want to remove one million dollars offshore? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:remove_offshore(1000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_money_remove_158_million_offshore = function()

        local confirm_title = "Confirm offshore removal"
        local confirm_message = "Are you sure you want to remove 15.8 million dollars offshore? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:remove_offshore(15800000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_money_remove_hundred_million_offshore = function()

        local confirm_title = "Confirm offshore removal"
        local confirm_message = "Are you sure you want to remove 100 million dollars offshore? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:remove_offshore(100000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_money_remove_one_billion_offshore = function()

        local confirm_title = "Confirm offshore removal"
        local confirm_message = "Are you sure you want to remove 1 billion dollars offshore? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:remove_offshore(1000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_money_remove_one_million_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to remove 1 million dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:remove_spending(1000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_money_remove_158_million_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to remove 15.8 million dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:remove_spending(15800000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end

    MenuCallbackHandler.callback_money_remove_hundred_million_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to remove 100 million dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:remove_spending(100000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_money_remove_one_billion_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to remove 1 billion dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:remove_spending(1000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end

    
    MenuCallbackHandler.callback_money_remove_hundred_billion_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to remove hundred billion dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:remove_spending(100000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end


    -- Add
    MenuCallbackHandler.callback_money_add_one_billion_offshore = function()

        local confirm_title = "Confirm offshore removal"
        local confirm_message = "Are you sure you want to add 1 billion dollars offshore? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:set_offshore(1000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_money_add_one_million_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to add 1 million dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:add_spending(1000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_money_add_158_million_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to add 15.8 million dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:add_spending(15800000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end

    MenuCallbackHandler.callback_money_add_hundred_million_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to add 100 million dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:add_spending(100000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_money_add_one_billion_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to add 1 billion dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:add_spending(1000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end


    -- Resets
    MenuCallbackHandler.callback_money_reset_spending_cash = function()
        --Wipe spending
        local confirm_title = "Confirm spending cash wipe"
        local confirm_message = "Are you sure you want to wipe all of your spending cash?\nThis CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:set_spending(0) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)
    end
        
    MenuCallbackHandler.callback_money_reset_offshore = function()
        --Wipe offshore
        local confirm_title = "Confirm offshore wipe"
        local confirm_message = "Are you sure you want to wipe all of your offshore money?\nThis CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Money:set_offshore(0) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Money:ConfirmationDialog(confirm_title, confirm_message, confirm_options)
    end

    MenuHelper:LoadFromJsonFile(Money.ModPath .. "/menu/menu.json", Money, Money.MenuData)
    
end)

function Money:ConfirmationDialog(title, message, options)
	local menu = QuickMenu:new(title, message, options)
	menu:Show()    
end

function Money:set_offshore(amount)
    managers.money:_set_offshore(amount)
end

function Money:set_spending(amount)
    managers.money:_set_total(amount)
end

function Money:remove_offshore(amount)
    managers.money:_deduct_from_offshore(amount)
end

function Money:remove_spending(amount)
    managers.money:_deduct_from_total(amount)
end

function Money:add_spending(amount)
    managers.money:_add_to_total(amount)
end