.class public Lcom/android/systemui/volume/view/VolumeRowView;
.super Landroid/widget/RelativeLayout;
.source "VolumeRowView.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/view/VolumeRowView$VolumeSeekBarChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private final mContext:Landroid/content/Context;

.field private mEarProtectLevel:I

.field private mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mIcon:Landroid/widget/ImageButton;

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockColor:Landroid/content/res/ColorStateList;

.field private mIconMutedColor:Landroid/content/res/ColorStateList;

.field private mLabelTextView:Landroid/widget/TextView;

.field private mMuteIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBarAnimator:Landroid/animation/ObjectAnimator;

.field private mRecheckCallback:Ljava/lang/Runnable;

.field private final mResources:Landroid/content/res/Resources;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSmartViewToast:Landroid/widget/Toast;

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStream:I

.field private mTargetProgressLevel:I

.field private mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mObservers:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 40
    iput p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 44
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    .line 45
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    .line 57
    new-instance p2, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$wPfMczPIUks9B_DbvLqjaDD2V-g;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$wPfMczPIUks9B_DbvLqjaDD2V-g;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    .line 67
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_sound:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_media:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_system:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_accessibility:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_sound:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_call:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_bluetooth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_bixby:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_sound:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_media:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_bluetooth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_mute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_media_mute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_system_mute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_mute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_accessibility:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_mute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_call:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_bluetooth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_bixby:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_mute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_media:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_bluetooth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x1060386

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 96
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1060388

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIconMutedColor:Landroid/content/res/ColorStateList;

    .line 98
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1060387

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    .line 101
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/view/VolumeRowView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    return p0
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    .line 601
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getProgress(I)I
    .locals 1

    .line 363
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-eq p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x64

    :cond_0
    return p1
.end method

.method private getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;
    .locals 5

    .line 547
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 552
    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v0

    .line 553
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 559
    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v1

    .line 560
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, ""

    .line 565
    :goto_0
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 566
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne v2, v3, :cond_2

    .line 567
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->volume_amplify_ambient_sound_title:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 568
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne v2, v3, :cond_3

    .line 569
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 570
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->volume_amplify_ambient_sound_title:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 575
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    .line 576
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    .line 577
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    const-string p2, ")"

    const-string v2, " ("

    if-eq p0, p1, :cond_5

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-eq p0, p1, :cond_5

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne p0, p1, :cond_4

    goto :goto_2

    .line 580
    :cond_4
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p0, p1, :cond_6

    const-string p0, ","

    .line 581
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aget-object p1, p1, v3

    .line 582
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 579
    :cond_5
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_3
    return-object v1
.end method

.method private isActiveNow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 1

    .line 316
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$S_7xsBHhntvbxOxCzuxMYKEmKLU;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$S_7xsBHhntvbxOxCzuxMYKEmKLU;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 317
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ofCcZg94FsomyxQmSNLwR3Asvns;->INSTANCE:Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ofCcZg94FsomyxQmSNLwR3Asvns;

    .line 318
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 319
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isImportant(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 1

    .line 323
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$gS0hwLXkvSuM8H0VBqXC1Og8Gqw;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$gS0hwLXkvSuM8H0VBqXC1Og8Gqw;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 324
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$WkL6fMIJU8KQlY76komacQ0Nz9k;->INSTANCE:Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$WkL6fMIJU8KQlY76komacQ0Nz9k;

    .line 325
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 326
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$HNg_ZJdysKpRPdkckbT_3uBWI_8(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateDualColorSeekbar(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method static synthetic lambda$isActiveNow$7(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 1

    .line 318
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$isImportant$9(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 1

    .line 325
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showSmartViewTouchToast$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$showSmartViewTouchToast$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;
    .locals 1

    .line 306
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private setProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 5

    .line 371
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/VolumeRowView;->getProgress(I)I

    move-result v0

    .line 372
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 373
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mTargetProgressLevel:I

    if-ne p1, v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p1, :cond_1

    .line 377
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    new-array v3, v3, [I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    aput v4, v3, v2

    aput v0, v3, v1

    const-string v1, "progress"

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    .line 378
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 381
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    aput v4, v3, v2

    aput v0, v3, v1

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 383
    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mTargetProgressLevel:I

    .line 384
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 385
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 387
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3

    .line 388
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 390
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void
.end method

.method private showSmartViewTouchToast(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSmartViewToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$vC3j6oWAgAB0Engxatl3BpvwvZA;->INSTANCE:Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$vC3j6oWAgAB0Engxatl3BpvwvZA;

    .line 304
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$rc_u_iBff4ZUT0n7PUuN-k7xT1g;->INSTANCE:Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$rc_u_iBff4ZUT0n7PUuN-k7xT1g;

    .line 305
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 309
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->volume_use_your_phone_volume_smart_view:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSmartViewToast:Landroid/widget/Toast;

    .line 312
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSmartViewToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 3

    .line 485
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 487
    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    .line 489
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_sound:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 491
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_vib:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 493
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_mute:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 495
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 496
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 499
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->volume_icon_content_description_to_mute:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 497
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->volume_icon_content_description_to_unmute:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 501
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 479
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$bob3XBdl1lMCymfjDkgKu28zZjk;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$bob3XBdl1lMCymfjDkgKu28zZjk;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 480
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$xhtJexv1yHHhjMUEnYJyVyVlh14;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$xhtJexv1yHHhjMUEnYJyVyVlh14;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 481
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateDualColorSeekBar(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 395
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$62eF5gG-da65H6zrmo5WZ6VFIck;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$62eF5gG-da65H6zrmo5WZ6VFIck;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 396
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$HNg_ZJdysKpRPdkckbT_3uBWI_8;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$HNg_ZJdysKpRPdkckbT_3uBWI_8;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 397
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateDualColorSeekbar(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    .line 401
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    .line 402
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mEarProtectLevel:I

    if-eq p1, v0, :cond_0

    .line 403
    iput p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mEarProtectLevel:I

    .line 404
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :cond_0
    return-void
.end method

.method private updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 336
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ovE2vSTaY9Qg725-rzDxSGP5W2U;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ovE2vSTaY9Qg725-rzDxSGP5W2U;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 337
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$gpapOLm5V2Z5WBGNioxCPvH1fLc;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$gpapOLm5V2Z5WBGNioxCPvH1fLc;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 338
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    .line 415
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 417
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_remote:I

    goto :goto_0

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 449
    :pswitch_0
    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_remote_mute:I

    goto :goto_1

    .line 446
    :pswitch_1
    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_remote:I

    goto :goto_1

    .line 443
    :pswitch_2
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_mirroring:I

    goto :goto_1

    .line 440
    :pswitch_3
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_accessory:I

    goto :goto_1

    .line 425
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mNormalIcons:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 428
    :pswitch_5
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_bluetooth:I

    goto :goto_1

    .line 431
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mMuteIcons:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 434
    :pswitch_7
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_vibrate:I

    .line 435
    iget p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    if-ne p1, v0, :cond_1

    .line 436
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_vibrate:I

    .line 452
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 409
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$bU1KjmPG4jIZZalDWxxbvXJc72M;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$bU1KjmPG4jIZZalDWxxbvXJc72M;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 410
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$z0ux161gltyByH741MPQ40wakxw;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$z0ux161gltyByH741MPQ40wakxw;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 411
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 2

    .line 465
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 466
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 467
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    if-nez v0, :cond_1

    .line 468
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 469
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 470
    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p2

    if-lez p2, :cond_2

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 471
    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 472
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 474
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method private updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 456
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$PzkGpIQW6GDD1G32pslaTXrJkAU;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$PzkGpIQW6GDD1G32pslaTXrJkAU;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 457
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$cEqcqCCbYAyl7UkimFR0yX8UwBU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$cEqcqCCbYAyl7UkimFR0yX8UwBU;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 458
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 330
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ImeM3Oh5BYdklSHnm-eRppPFwfw;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ImeM3Oh5BYdklSHnm-eRppPFwfw;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 331
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$B2u2OgNzBilXr5Vwvin6OSyfvLw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$B2u2OgNzBilXr5Vwvin6OSyfvLw;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 332
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateLabelTextColor()V
    .locals 3

    const/4 v0, 0x0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->tw_volume_title_color_light:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10603eb

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 193
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 356
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$fkwU82C732YMGbypmbdCciwTYJ0;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$fkwU82C732YMGbypmbdCciwTYJ0;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 357
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$7AxokjSh8_k96nBEvxo3Eud1OmY;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$7AxokjSh8_k96nBEvxo3Eud1OmY;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 358
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateRowLayout(ZZZ)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 612
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->volume_panel_minimized_row_padding_vertical:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 613
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->volume_panel_minimized_row_padding_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p3, :cond_1

    .line 616
    invoke-virtual {p0, v0, p2, v0, p2}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    goto :goto_4

    :cond_1
    if-eqz p1, :cond_2

    move p3, p2

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move p2, v0

    .line 618
    :goto_3
    invoke-virtual {p0, v0, p3, v1, p2}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 623
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const/16 v0, 0x8

    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 205
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$YkvbOgPGfnOK9PZ_pgacm5wpVA4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$YkvbOgPGfnOK9PZ_pgacm5wpVA4;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 212
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public getStream()I
    .locals 0

    .line 607
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    return p0
.end method

.method public initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/VolumePanelMotion;)V
    .locals 10

    .line 110
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 113
    iput-object p3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 114
    iput-object p5, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

    .line 116
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p4, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    .line 117
    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p4, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p3

    .line 118
    sget-object p5, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p4, p5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p5

    .line 119
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p4, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 120
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p4, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    .line 122
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 123
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v2

    .line 124
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v3

    .line 125
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v4

    .line 126
    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p2, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v5

    .line 127
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p2, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v6

    .line 128
    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p2, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v7

    .line 130
    sget v8, Lcom/android/systemui/R$id;->volume_row_icon:I

    invoke-virtual {p0, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    .line 131
    iget-object v8, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    new-instance v9, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$Guuw3bXXtgoX2fn1tawJt3P5vcE;

    invoke-direct {v9, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$Guuw3bXXtgoX2fn1tawJt3P5vcE;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 137
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-nez v5, :cond_1

    .line 140
    iget-object v8, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    invoke-virtual {v8, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 141
    iget-object v8, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v8, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_1

    .line 143
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 144
    iget-object v6, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    invoke-virtual {v6, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 147
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/view/VolumeRowView;->updateIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 149
    sget p1, Lcom/android/systemui/R$id;->volume_row_slider:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 151
    iget p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget v6, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p1, v6, :cond_2

    .line 152
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 153
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 154
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 155
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v7}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    .line 156
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$OPK0A-sI7UWfRSlbKyxKFKwaEtU;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$OPK0A-sI7UWfRSlbKyxKFKwaEtU;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 164
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 165
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 166
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v7}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 168
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/systemui/volume/view/VolumeRowView$VolumeSeekBarChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/volume/view/VolumeRowView$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/android/systemui/volume/view/VolumeRowView$1;)V

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 169
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 170
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/view/VolumeRowView;->getProgress(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 171
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/view/VolumeRowView;->updateDualColorSeekbar(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 173
    sget p1, Lcom/android/systemui/R$id;->volume_row_header:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    .line 174
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p4}, Lcom/android/systemui/volume/view/VolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeRowView;->updateLabelTextColor()V

    .line 177
    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/view/VolumeRowView;->updateVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 178
    invoke-direct {p0, p3, p5, v1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateRowLayout(ZZZ)V

    .line 180
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/volume/view/VolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 181
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public synthetic lambda$dispatch$3$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 207
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$initialize$1$VolumeRowView(Landroid/view/View;)V
    .locals 2

    .line 132
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 134
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public synthetic lambda$initialize$2$VolumeRowView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 157
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p1, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 159
    invoke-virtual {p1, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x0

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return p2
.end method

.method public synthetic lambda$isActiveNow$6$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 317
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$isImportant$8$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 324
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$VolumeRowView()V
    .locals 3

    .line 57
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 59
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public synthetic lambda$updateContentDescription$21$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 480
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$updateContentDescription$22$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    .line 481
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    return-void
.end method

.method public synthetic lambda$updateDualColorSeekBar$16$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 396
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$updateEnableState$12$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 337
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$updateEnableState$13$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    .line 339
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    .line 340
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v1

    .line 341
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    .line 343
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    .line 345
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 346
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_1

    .line 348
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 349
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 351
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$updateIcon$17$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 410
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$updateIcon$18$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public synthetic lambda$updateIconTintColor$19$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 457
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$updateIconTintColor$20$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    .line 459
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 460
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 459
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    return-void
.end method

.method public synthetic lambda$updateLabel$10$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 331
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$updateLabel$11$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$updateProgress$14$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 357
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$updateProgress$15$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->setProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public synthetic lambda$updateVisibility$23$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 506
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$updateVisibility$24$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 5

    .line 219
    sget-object v0, Lcom/android/systemui/volume/view/VolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 287
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    if-ne v0, p1, :cond_5

    .line 288
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 289
    invoke-virtual {p1, v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 290
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 288
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 293
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 294
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 277
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 278
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->showSmartViewTouchToast(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_1

    .line 270
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    if-ne v0, p1, :cond_5

    .line 271
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 272
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 264
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 265
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_1

    .line 247
    :pswitch_4
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 249
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 250
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 251
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/VolumePanelMotion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumePanelMotion;->startActiveRowAlphaAnimation(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 256
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->isImportant(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->isActiveNow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    :cond_2
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 258
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    .line 257
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateRowLayout(ZZZ)V

    goto :goto_1

    .line 237
    :pswitch_5
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->isImportant(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->isActiveNow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    :cond_3
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 241
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    .line 240
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateRowLayout(ZZZ)V

    goto :goto_1

    .line 221
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->isImportant(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->isActiveNow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateDualColorSeekBar(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 229
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 230
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 231
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 592
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 593
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 594
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 106
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method

.method public updateVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    .line 511
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public updateVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 505
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$nG7cB9PvIsI_vQsDmaovQODp4L4;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$nG7cB9PvIsI_vQsDmaovQODp4L4;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 506
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$R8AkGmB-0zIfK18I2KgdU-be6QM;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$R8AkGmB-0zIfK18I2KgdU-be6QM;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 507
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
