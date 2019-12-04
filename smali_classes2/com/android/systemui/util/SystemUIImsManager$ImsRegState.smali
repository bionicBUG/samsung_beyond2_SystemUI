.class public Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;
.super Ljava/lang/Object;
.source "SystemUIImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/SystemUIImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsRegState"
.end annotation


# instance fields
.field private mEpdgRegState:Z

.field private mVoLteRegState:Z

.field private mVoWifiRegState:Z

.field final synthetic this$0:Lcom/android/systemui/util/SystemUIImsManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SystemUIImsManager;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoWifiRegState:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoLteRegState:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;)Z
    .locals 0

    .line 294
    iget-boolean p0, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mEpdgRegState:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mEpdgRegState:Z

    return p1
.end method


# virtual methods
.method public isEpdgRegistered()Z
    .locals 0

    .line 302
    iget-boolean p0, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mEpdgRegState:Z

    return p0
.end method

.method public isVoLteRegistered()Z
    .locals 0

    .line 307
    iget-boolean p0, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoLteRegState:Z

    return p0
.end method

.method public isVoWifiRegistered()Z
    .locals 0

    .line 311
    iget-boolean p0, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoWifiRegState:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEpdgRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mEpdgRegState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVoLteRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoLteRegState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVoWifiRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->mVoWifiRegState:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
