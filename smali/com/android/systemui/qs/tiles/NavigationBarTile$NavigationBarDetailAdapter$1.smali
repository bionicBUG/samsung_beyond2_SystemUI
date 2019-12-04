.class Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;
.super Ljava/lang/Object;
.source "NavigationBarTile.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

.field final synthetic val$optionContainer:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->val$optionContainer:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 386
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result p1

    sget v0, Lcom/android/systemui/R$id;->navigation_option_container:I

    if-ne p1, v0, :cond_2

    .line 387
    sget p1, Lcom/android/systemui/R$id;->navigation_button:I

    if-ne p2, p1, :cond_0

    .line 388
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1500(Lcom/android/systemui/qs/tiles/NavigationBarTile;Z)V

    goto :goto_0

    .line 389
    :cond_0
    sget p1, Lcom/android/systemui/R$id;->screen_gesture:I

    if-ne p2, p1, :cond_2

    .line 390
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1600(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 391
    new-instance p1, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1$1;-><init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;)V

    .line 397
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1700(Lcom/android/systemui/qs/tiles/NavigationBarTile;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1500(Lcom/android/systemui/qs/tiles/NavigationBarTile;Z)V

    :cond_2
    :goto_0
    return-void
.end method
