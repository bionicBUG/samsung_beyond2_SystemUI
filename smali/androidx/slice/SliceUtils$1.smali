.class final Landroidx/slice/SliceUtils$1;
.super Ljava/lang/Object;
.source "SliceUtils.java"

# interfaces
.implements Landroidx/slice/SliceItemHolder$HolderHandler;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$options:Landroidx/slice/SliceUtils$SerializeOptions;


# virtual methods
.method public handle(Landroidx/slice/SliceItemHolder;Ljava/lang/String;)V
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/slice/SliceUtils$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Landroidx/slice/SliceUtils$1;->val$options:Landroidx/slice/SliceUtils$SerializeOptions;

    invoke-static {v0, p1, p2, p0}, Landroidx/slice/SliceUtils;->handleOptions(Landroid/content/Context;Landroidx/slice/SliceItemHolder;Ljava/lang/String;Landroidx/slice/SliceUtils$SerializeOptions;)V

    return-void
.end method
