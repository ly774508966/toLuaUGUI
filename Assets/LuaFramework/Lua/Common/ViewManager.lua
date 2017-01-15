local M = {}

--压入界面--
function M.PushView(moduleName)
    -- 界面加载完毕的处理--
    local function __LoadViewCompleted(obj)
        local view = require ('View/' .. moduleName .. 'Panel')
        view:Init(obj)
        CtrlManager.GetCtrl(moduleName):OnEnter(view)
    end

    panelMgr:CreatePanel(moduleName, __LoadViewCompleted);
end

--退出View界面--
function M.PopView(moduleName)
    panelMgr:ClosePanel(moduleName);
end

return M
