.class public Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;
.super Ljava/lang/Object;
.source "SoundAssistantManagerWrapper.java"


# instance fields
.field private final mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    return-void
.end method


# virtual methods
.method public isMediaDefault()Z
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setMediaDefault(Z)V
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    return-void
.end method
