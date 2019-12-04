.class Lcom/android/systemui/qs/bar/BrightnessBar$4;
.super Ljava/lang/Object;
.source "BrightnessBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/BrightnessBar;->initBrightnessDetail(Lcom/android/systemui/qs/QSPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/BrightnessBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$4;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$4;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->access$000(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessDetail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDetail;->getBrightnessDetilaAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->setToggleState(Z)V

    return-void
.end method
