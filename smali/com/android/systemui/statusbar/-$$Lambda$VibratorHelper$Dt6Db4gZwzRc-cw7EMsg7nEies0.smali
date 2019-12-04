.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$Dt6Db4gZwzRc-cw7EMsg7nEies0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final synthetic f$1:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$Dt6Db4gZwzRc-cw7EMsg7nEies0;->f$0:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$Dt6Db4gZwzRc-cw7EMsg7nEies0;->f$1:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$Dt6Db4gZwzRc-cw7EMsg7nEies0;->f$0:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$Dt6Db4gZwzRc-cw7EMsg7nEies0;->f$1:Landroid/os/VibrationEffect;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/VibratorHelper;->lambda$vibrate$1$VibratorHelper(Landroid/os/VibrationEffect;)V

    return-void
.end method
