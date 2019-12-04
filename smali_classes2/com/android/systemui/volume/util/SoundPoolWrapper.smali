.class public Lcom/android/systemui/volume/util/SoundPoolWrapper;
.super Ljava/lang/Object;
.source "SoundPoolWrapper.java"


# instance fields
.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundID:I

    return-void
.end method


# virtual methods
.method public initSound(I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->makeSound()V

    :goto_0
    return-void
.end method

.method public makeSound()V
    .locals 4

    .line 17
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xd

    .line 18
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    .line 21
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "system/media/audio/ui/TW_Volume_control.ogg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundID:I

    return-void
.end method

.method public playSound()V
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 34
    iget v1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundID:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->releaseSound()V

    :cond_0
    return-void
.end method

.method public releaseSound()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method
