.class Landroidx/media/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;
.super Ljava/lang/Object;
.source "AudioFocusRequestCompat.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioFocusRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnAudioFocusChangeListenerHandlerCompat"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 437
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2a74b2

    if-ne v0, v1, :cond_0

    .line 438
    iget-object p0, p0, Landroidx/media/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->mListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    .line 432
    iget-object p0, p0, Landroidx/media/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->mHandler:Landroid/os/Handler;

    const v0, 0x2a74b2

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
