.class public Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;
.super Ljava/lang/Object;
.source "BixbyContextInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BixbyContextInfo"


# instance fields
.field private final BIXBY_CLIENT_TASK_ID:Ljava/lang/String;

.field private final IS_MEDIA_CONTROL_ACTIVE:Ljava/lang/String;

.field private final IS_MUSIC_ACTIVE:Ljava/lang/String;

.field private final LOCALE:Ljava/lang/String;

.field private bixbyClientTaskId:Ljava/lang/Integer;

.field private isMediaControlActive:Z

.field private isMusicActive:Z

.field private locale:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "locale"

    .line 32
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->LOCALE:Ljava/lang/String;

    const-string v0, "isMusicActive"

    .line 33
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->IS_MUSIC_ACTIVE:Ljava/lang/String;

    const-string v0, "isMediaControlActive"

    .line 34
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->IS_MEDIA_CONTROL_ACTIVE:Ljava/lang/String;

    const-string v0, "bixbyClient_taskId"

    .line 35
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->BIXBY_CLIENT_TASK_ID:Ljava/lang/String;

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->locale:Ljava/lang/String;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMusicActive:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMediaControlActive:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "locale"

    .line 32
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->LOCALE:Ljava/lang/String;

    const-string v1, "isMusicActive"

    .line 33
    iput-object v1, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->IS_MUSIC_ACTIVE:Ljava/lang/String;

    const-string v2, "isMediaControlActive"

    .line 34
    iput-object v2, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->IS_MEDIA_CONTROL_ACTIVE:Ljava/lang/String;

    const-string v3, "bixbyClient_taskId"

    .line 35
    iput-object v3, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->BIXBY_CLIENT_TASK_ID:Ljava/lang/String;

    const-string v4, ""

    .line 45
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->locale:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMusicActive:Z

    .line 47
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMediaControlActive:Z

    .line 48
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->bixbyClientTaskId:Ljava/lang/Integer;

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BixbyContextInfo() :: locale - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isMusicActive - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMusicActive:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isMediaControlActive - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMediaControlActive:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBixbyClientTaskId()Ljava/lang/Integer;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->bixbyClientTaskId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->locale:Ljava/lang/String;

    return-object p0
.end method

.method public isMediaControlActive()Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMediaControlActive:Z

    return p0
.end method

.method public isMusicActive()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMusicActive:Z

    return p0
.end method
