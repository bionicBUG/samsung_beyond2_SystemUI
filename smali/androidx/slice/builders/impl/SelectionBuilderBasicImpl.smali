.class public Landroidx/slice/builders/impl/SelectionBuilderBasicImpl;
.super Landroidx/slice/builders/impl/SelectionBuilderImpl;
.source "SelectionBuilderBasicImpl.java"


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 4

    .line 44
    invoke-virtual {p0}, Landroidx/slice/builders/impl/SelectionBuilderImpl;->getSelectionBuilder()Landroidx/slice/builders/SelectionBuilder;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroidx/slice/builders/SelectionBuilder;->check()V

    const-string v0, "list_item"

    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 51
    invoke-virtual {p0}, Landroidx/slice/builders/SelectionBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    .line 53
    invoke-virtual {p0}, Landroidx/slice/builders/SelectionBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroidx/slice/builders/SelectionBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, "title"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/SelectionBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Landroidx/slice/builders/SelectionBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/builders/SelectionBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {p0}, Landroidx/slice/builders/SelectionBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "content_description"

    invoke-virtual {p1, v0, v3, v1}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 66
    :cond_2
    invoke-virtual {p0}, Landroidx/slice/builders/SelectionBuilder;->getLayoutDirection()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 67
    invoke-virtual {p0}, Landroidx/slice/builders/SelectionBuilder;->getLayoutDirection()I

    move-result p0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "layout_direction"

    invoke-virtual {p1, p0, v1, v0}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_3
    return-void
.end method
