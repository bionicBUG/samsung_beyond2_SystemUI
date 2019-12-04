.class Lcom/android/systemui/qs/bar/BrightnessBar$1;
.super Ljava/lang/Object;
.source "BrightnessBar.java"

# interfaces
.implements Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/BrightnessBar;-><init>(Landroid/content/Context;)V
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

    .line 74
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidDB()Z
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->isValidData()Z

    move-result p0

    return p0
.end method

.method public onBackup(Z)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->getBackupData(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onRestore(Ljava/lang/String;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->setRestoreData(Ljava/lang/String;)V

    return-void
.end method
