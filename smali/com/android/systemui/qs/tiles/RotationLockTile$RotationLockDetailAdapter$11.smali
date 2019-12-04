.class Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$11;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$11;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 497
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$11;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->access$2300(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)Lcom/android/systemui/qs/QSSwitch;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$11;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->access$2300(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)Lcom/android/systemui/qs/QSSwitch;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
