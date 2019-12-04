.class Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1$1;
.super Ljava/lang/Object;
.source "NavigationBarTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->onCheckedChanged(Landroid/widget/RadioGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1$1;->this$2:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1$1;->this$2:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->val$optionContainer:Landroid/widget/RadioGroup;

    sget p1, Lcom/android/systemui/R$id;->navigation_button:I

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method
