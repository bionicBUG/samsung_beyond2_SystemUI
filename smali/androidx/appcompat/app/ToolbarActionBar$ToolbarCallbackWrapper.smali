.class Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;
.super Landroidx/appcompat/view/WindowCallbackWrapper;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarCallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/ToolbarActionBar;


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    .line 536
    new-instance p1, Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object p0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 538
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/WindowCallbackWrapper;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 522
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 523
    iget-object p2, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-boolean p3, p2, Landroidx/appcompat/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    if-nez p3, :cond_0

    .line 524
    iget-object p2, p2, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p2}, Landroidx/appcompat/widget/DecorToolbar;->setMenuPrepared()V

    .line 525
    iget-object p0, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/appcompat/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    :cond_0
    return p1
.end method