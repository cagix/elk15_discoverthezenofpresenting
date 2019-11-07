-- Pandoc filter to replace certain LaTeX macros with matching HTML tags.
-- Carsten Gips, FH Bielefeld
-- 07.11.2019


-- helper function to create new span
local function newSpan(text, class)
    return { pandoc.Span({ pandoc.Str(text) }, pandoc.Attr("", { class })), pandoc.Space() }
end


-- handling of `\blueArrow` etc. ... (RawInline, tex)
function RawInline(el)
    if el.format == "tex" or el.format == "latex" then
        -- \blueArrow
        if el.text:match("\\blueArrow") then
            return newSpan("=>", "blueArrow")
        end
        -- \alert{}, \Alert{}, \bsp{}
        key, cont = el.text:match("\\(.+)%{(.+)%}")
        if key == "alert" or key == "Alert" or key == "bsp" then
            return newSpan(cont, key)
        end
    end
end


-- handling of `\blueArrow` etc. ... (RawBlock, tex)
function RawBlock(el)
    if el.format == "tex" or el.format == "latex" then
        -- \blueArrow
        if el.text:match("\\blueArrow") then
            return pandoc.Plain(newSpan("=>", "blueArrow"))
        end
        -- \alert{}, \Alert{}, \bsp{}
        key, cont = el.text:match("\\(.+)%{(.+)%}")
        if key == "alert" or key == "Alert" or key == "bsp" then
            return pandoc.Plain(newSpan(cont, key))
        end
    end
end
