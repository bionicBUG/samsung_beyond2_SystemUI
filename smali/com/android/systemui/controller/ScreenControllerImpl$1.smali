.class Lcom/android/systemui/controller/ScreenControllerImpl$1;
.super Ljava/lang/Object;
.source "ScreenControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

.field final synthetic val$brightnessValue:I

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/controller/ScreenControllerImpl;Landroid/widget/SeekBar;I)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl$1;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controller/ScreenControllerImpl$1;->val$seekBar:Landroid/widget/SeekBar;

    iput p3, p0, Lcom/android/systemui/controller/ScreenControllerImpl$1;->val$brightnessValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$1;->val$seekBar:Landroid/widget/SeekBar;

    iget p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$1;->val$brightnessValue:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v1}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    return-void
.end method
