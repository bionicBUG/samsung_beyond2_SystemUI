.class public Lcom/android/systemui/volume/reducer/VolumePanelReducer;
.super Ljava/lang/Object;
.source "VolumePanelReducer.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyActiveState(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 559
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$f80o3MOI9L8fSYbGEphLCPy6GjI;

    invoke-direct {p1, p2}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$f80o3MOI9L8fSYbGEphLCPy6GjI;-><init>(I)V

    .line 560
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 568
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static applyEarProtectLevel(Ljava/util/List;ZZI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;ZZI)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 580
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$zsQV5JPYxh2su26C_0_BiOWBFfk;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$zsQV5JPYxh2su26C_0_BiOWBFfk;-><init>(ZZI)V

    .line 581
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 592
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 760
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$5E_xRWBaLkAF-fR4xuRo4V4Z2dQ;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$5E_xRWBaLkAF-fR4xuRo4V4Z2dQ;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 769
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static applyRemoteLabel(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 597
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$dlxZ4CgDsTwW8RL6G-SnA79BvMw;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$dlxZ4CgDsTwW8RL6G-SnA79BvMw;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 598
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 611
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static applyRowOrder(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 870
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$j4O13PHYO23MxxrCTzSCtpod240;->INSTANCE:Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$j4O13PHYO23MxxrCTzSCtpod240;

    .line 871
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 872
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static applySmartViewLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I
    .locals 0

    .line 690
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1388

    .line 691
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xbb8

    .line 693
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static checkIfNeedToSetProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IIJ)Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 1

    .line 615
    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isTracking(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 617
    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 618
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0

    .line 619
    :cond_0
    invoke-static {p0, p1, p3, p4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isUserAttemptInGracePeriod(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IJ)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 620
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR_LATER:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 621
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 622
    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 623
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0

    .line 624
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isReallevelAndImpliedLevelSame(Ljava/util/List;II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 625
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 626
    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 627
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0

    .line 629
    :cond_2
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 630
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 631
    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object p0

    .line 632
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0
.end method

.method static checkRingerMode(Lcom/samsung/systemui/splugins/volume/VolumeState;I)Z
    .locals 1

    .line 949
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z
    .locals 0

    .line 945
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static checkZenMuted(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;ZZZZ)Z
    .locals 1

    .line 974
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    .line 975
    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 977
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p3

    goto :goto_0

    .line 979
    :cond_1
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_0
    return p1
.end method

.method static determineEarProtectLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)I
    .locals 2

    .line 893
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    .line 894
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p2

    .line 895
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-static {p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-static {p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_3

    :cond_1
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    .line 896
    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0

    .line 897
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    return p0
.end method

.method static determineEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)Z
    .locals 8

    .line 986
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v1

    goto :goto_0

    .line 988
    :cond_0
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v1

    .line 989
    :goto_0
    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {v2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    .line 990
    invoke-static {v2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    .line 991
    invoke-static {v2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    .line 992
    invoke-static {v2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v3

    .line 995
    :goto_1
    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    invoke-static {p0, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 996
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 998
    :goto_2
    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p1, v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v5

    .line 999
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p1, v6}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v6

    .line 1000
    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p1, v7}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p1

    if-eqz p4, :cond_5

    .line 1001
    invoke-static {p0, p1, v6, v5, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkZenMuted(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;ZZZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v4

    goto :goto_3

    :cond_5
    move p1, v3

    .line 1005
    :goto_3
    sget-object p4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p2

    if-nez p2, :cond_7

    if-nez v2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move p1, v3

    goto :goto_5

    :cond_7
    :goto_4
    move p1, v4

    :goto_5
    if-nez p1, :cond_9

    .line 1007
    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-static {p0, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1008
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p3, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p0

    .line 1009
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p3, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result p2

    .line 1010
    sget-object p4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p3, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result p3

    if-eqz p0, :cond_8

    return v4

    :cond_8
    if-eqz p2, :cond_9

    if-nez p3, :cond_9

    return v3

    :cond_9
    if-eqz v1, :cond_a

    if-nez p1, :cond_a

    move v3, v4

    :cond_a
    return v3
.end method

.method private static determineIconClickable(IZ)Z
    .locals 2

    .line 832
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    return v1

    .line 835
    :cond_0
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    if-eq p0, p1, :cond_1

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static determineIconEnabled(IZ)Z
    .locals 1

    .line 839
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static determineIconState(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;Z)I
    .locals 3

    .line 914
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 916
    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_3

    .line 918
    :cond_1
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/4 p0, 0x5

    :goto_0
    move v1, p0

    goto/16 :goto_3

    .line 920
    :cond_3
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 921
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    const/4 p0, 0x7

    goto :goto_0

    :cond_6
    const/4 p0, 0x6

    goto :goto_0

    .line 923
    :cond_7
    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result p2

    if-nez p2, :cond_c

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result p2

    if-nez p2, :cond_c

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    .line 924
    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamNormal(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result p2

    if-nez p2, :cond_a

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    .line 925
    invoke-static {p0, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p2

    if-nez p2, :cond_9

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    .line 926
    invoke-static {p0, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    .line 927
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p1

    if-eqz p1, :cond_c

    :cond_9
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    const/4 v1, 0x3

    goto :goto_3

    :cond_b
    :goto_2
    move v1, v2

    :cond_c
    :goto_3
    return v1
.end method

.method private static determineMaxLevel(IIZ)I
    .locals 1

    .line 843
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne p0, v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static determineMinLevel(IIZ)I
    .locals 1

    .line 850
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne p0, v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static determineRealVolumeLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)I
    .locals 1

    .line 1026
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamNormal(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    .line 1027
    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_2

    .line 1028
    :cond_1
    :goto_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    .line 1029
    invoke-static {p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 1031
    :cond_2
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p0

    goto :goto_2

    .line 1030
    :cond_3
    :goto_1
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_2
    return p0
.end method

.method private static determineRemoteLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/lang/String;
    .locals 2

    .line 876
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 880
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne v0, v1, :cond_2

    .line 881
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2

    .line 883
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p3, v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-object p2

    .line 886
    :cond_3
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 887
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 889
    :cond_4
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static determineRowPriority(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZ)I
    .locals 2

    .line 857
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 858
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v1, :cond_0

    .line 859
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 863
    :cond_1
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method static determineVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;ZIZ)Z
    .locals 2

    .line 965
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    if-eqz p1, :cond_0

    .line 966
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v1

    or-int/2addr v1, v0

    if-nez v1, :cond_5

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    if-eq p2, v1, :cond_5

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq p2, p1, :cond_1

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p2, p1, :cond_3

    .line 968
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget p3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq p1, p3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget p3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, p3, :cond_3

    :cond_2
    if-nez v0, :cond_5

    :cond_3
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NONE:I

    if-ne p2, p1, :cond_4

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 969
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static getImpliedLevel(III)I
    .locals 1

    .line 1056
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1059
    :cond_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p0, v0, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    mul-int/lit8 p0, p1, 0x64

    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    if-ne p2, p0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 1069
    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getMedianLevel(III)I

    move-result p1

    goto :goto_1

    .line 1057
    :cond_4
    :goto_0
    div-int/lit8 p2, p2, 0xa

    mul-int/lit8 p1, p2, 0xa

    :goto_1
    return p1
.end method

.method static getLastAudibleLevelOrMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IILcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 5

    .line 1118
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 1119
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    .line 1120
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    .line 1122
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v2

    .line 1123
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p3, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v3

    .line 1124
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p3

    if-eqz v0, :cond_0

    .line 1125
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    if-ne p2, v0, :cond_3

    :goto_0
    if-nez v1, :cond_5

    .line 1127
    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_NORMAL:I

    if-ne p1, p2, :cond_2

    if-nez p0, :cond_5

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    move v2, p0

    goto :goto_2

    :cond_2
    if-nez v2, :cond_5

    :goto_1
    move v2, p3

    goto :goto_2

    .line 1137
    :cond_3
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-eq p2, p0, :cond_5

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :cond_5
    :goto_2
    return v2
.end method

.method static getMedianLevel(III)I
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    int-to-float p1, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZ)I
    .locals 3

    .line 667
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne v0, v2, :cond_2

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_VIBRATE:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_SILENT:I

    if-ne p1, v0, :cond_2

    :cond_1
    return v1

    .line 671
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    goto :goto_0

    .line 674
    :cond_3
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    return p0

    .line 672
    :cond_4
    :goto_0
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static getRingerModeByIconToggle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)I
    .locals 3

    .line 1080
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1081
    :cond_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1082
    :goto_0
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    .line 1083
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v1, :cond_4

    .line 1085
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1086
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_SILENT:I

    if-ne p1, p0, :cond_3

    if-eqz v0, :cond_3

    .line 1087
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_VIBRATE:I

    goto :goto_1

    .line 1092
    :cond_2
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_NORMAL:I

    if-ne p1, p0, :cond_3

    if-eqz v0, :cond_4

    .line 1093
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_VIBRATE:I

    goto :goto_2

    :cond_3
    :goto_1
    move p1, p0

    :cond_4
    :goto_2
    return p1
.end method

.method static isReallevelAndImpliedLevelSame(Ljava/util/List;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;II)Z"
        }
    .end annotation

    .line 651
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$axG28C4ORRPGgshK5v8sYm4CdAY;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$axG28C4ORRPGgshK5v8sYm4CdAY;-><init>(I)V

    .line 652
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$0fUV33IbZGt2lb4l6ajpdOIjwYA;

    invoke-direct {p1, p2}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$0fUV33IbZGt2lb4l6ajpdOIjwYA;-><init>(I)V

    .line 653
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 654
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

.method static isStreamNormal(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z
    .locals 0

    .line 953
    invoke-static {p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_NORMAL:I

    invoke-static {p2, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkRingerMode(Lcom/samsung/systemui/splugins/volume/VolumeState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z
    .locals 0

    .line 961
    invoke-static {p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_SILENT:I

    invoke-static {p2, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkRingerMode(Lcom/samsung/systemui/splugins/volume/VolumeState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z
    .locals 0

    .line 957
    invoke-static {p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_VIBRATE:I

    invoke-static {p2, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkRingerMode(Lcom/samsung/systemui/splugins/volume/VolumeState;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isTracking(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$kAUGMm3q4QTifHInRcFRiGiHsBs;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$kAUGMm3q4QTifHInRcFRiGiHsBs;-><init>(I)V

    .line 638
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$-CwXFC-Gmwc-RaPXN0exrdNM-ns;->INSTANCE:Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$-CwXFC-Gmwc-RaPXN0exrdNM-ns;

    .line 639
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 640
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

.method static isUserAttemptInGracePeriod(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IJ)Z
    .locals 1

    .line 644
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$T6sXZijL4R6Wr6TUGGVypa4g7PU;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$T6sXZijL4R6Wr6TUGGVypa4g7PU;-><init>(I)V

    .line 645
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$66xVkVOaWI4FDg7MUB-FYPNLnJg;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$66xVkVOaWI4FDg7MUB-FYPNLnJg;-><init>(J)V

    .line 646
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 647
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

.method static synthetic lambda$applyActiveState$0(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 1

    .line 561
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 562
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v0, 0x1

    .line 563
    invoke-virtual {p0, p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 564
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method static synthetic lambda$applyEarProtectLevel$2(ZZILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 582
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne v0, v1, :cond_1

    :cond_0
    if-nez p0, :cond_3

    .line 583
    :cond_1
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p0, v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    .line 588
    :cond_2
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/4 p2, -0x1

    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 590
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 584
    :cond_3
    :goto_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 586
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$applyImportance$17(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/Integer;)Z
    .locals 0

    .line 761
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$applyImportance$18(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/Integer;)Z
    .locals 0

    .line 762
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$applyImportance$19(Ljava/util/List;Ljava/util/List;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 4

    .line 761
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$0lqkCPeZlF78fmzhR2ymkiYPnnU;

    invoke-direct {v0, p3}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$0lqkCPeZlF78fmzhR2ymkiYPnnU;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    .line 762
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$OE0Lc0nqQHPB8Sp1N1GgLNg_eVo;

    invoke-direct {v0, p3}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$OE0Lc0nqQHPB8Sp1N1GgLNg_eVo;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    .line 763
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 764
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 765
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p3, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p2

    or-int/2addr p0, p2

    xor-int/lit8 p1, p1, 0x1

    and-int p2, p0, p1

    .line 765
    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 767
    invoke-virtual {p3, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 768
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$applyRemoteLabel$3(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 599
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne v0, v1, :cond_1

    .line 600
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p2, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 602
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 601
    :goto_0
    invoke-virtual {p2, p3, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 603
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 604
    :cond_1
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne p0, p1, :cond_2

    if-nez p2, :cond_2

    .line 605
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 606
    invoke-virtual {p0, p1, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 607
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p4
.end method

.method static synthetic lambda$applyRowOrder$24(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 1

    .line 871
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$isReallevelAndImpliedLevelSame$8(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 652
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$isReallevelAndImpliedLevelSame$9(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 3

    .line 653
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    invoke-static {v1, p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getImpliedLevel(III)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$isTracking$4(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 638
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$isTracking$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 1

    .line 639
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$isUserAttemptInGracePeriod$6(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 645
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$isUserAttemptInGracePeriod$7(JLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 2

    .line 646
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->USER_ATTEMPT_TIME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;)J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$mergeRemoteStream$12(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z
    .locals 0

    .line 735
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$mergeRemoteStream$13(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 735
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$j2wR8vU7uk1x8ArouqrhWtr_SOQ;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$j2wR8vU7uk1x8ArouqrhWtr_SOQ;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$mergeRemoteStream$14(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 740
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$mergeRemoteStream$15(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z
    .locals 1

    .line 739
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$obuI35lH6AP3YJ-xzlYWt9gSTNI;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$obuI35lH6AP3YJ-xzlYWt9gSTNI;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$mergeRemoteStream$16(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 747
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 748
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v1, 0x1

    .line 749
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 750
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 751
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 752
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$resetActiveState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 573
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v1, 0x0

    .line 574
    invoke-virtual {v0, p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 575
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$shouldSetStreamVolume$25(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 1036
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$shouldSetStreamVolume$26(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 3

    .line 1037
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    invoke-static {v1, p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getImpliedLevel(III)I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateLevelByIconToggle$28(ILcom/samsung/systemui/splugins/volume/VolumePanelState;ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 1105
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 1106
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1107
    invoke-static {p1, p2, p0, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getLastAudibleLevelOrMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IILcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->USER_ATTEMPT_TIME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    const-wide/16 p2, 0x0

    .line 1108
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 1109
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 1111
    :cond_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateLevelByProgressBar$27(IIJLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 3

    .line 1043
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 1044
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 1045
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p4

    invoke-static {v1, p4, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getImpliedLevel(III)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;->USER_ATTEMPT_TIME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;

    .line 1046
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 1047
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 1049
    :cond_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateRealLevel$10(ILcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 3

    .line 660
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 661
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZ)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 662
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateRowPriority$21(IZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 2

    .line 782
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 783
    invoke-static {p2, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRowPriority(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZ)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 784
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateRowVisibility$20(ZLcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 4

    .line 774
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 775
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 776
    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    .line 775
    invoke-static {p2, p0, v2, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;ZIZ)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 777
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateTracking$11(IZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 1

    .line 679
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 680
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 681
    invoke-virtual {p0, p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    .line 683
    :cond_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateVolumeStates$22(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z
    .locals 0

    .line 792
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$updateVolumeStates$23(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;ZILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 5

    .line 791
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getStreamStates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$1RUKC3_ta-n7HQloVu5Cvb9fW5A;

    invoke-direct {v1, p6}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$1RUKC3_ta-n7HQloVu5Cvb9fW5A;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 792
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 793
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    if-eqz v0, :cond_0

    .line 795
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v1

    .line 796
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v2, p6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    .line 797
    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    .line 798
    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 799
    invoke-static {p6, v0, p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRemoteLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ROUTED_TO_BLUETOOTH:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    .line 800
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    .line 801
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 802
    invoke-static {v0, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRealVolumeLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 803
    invoke-static {v0, p0, p2, p3, p4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)Z

    move-result p4

    invoke-virtual {p1, v2, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object p4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 804
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MIN:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineMinLevel(IIZ)I

    move-result v2

    invoke-virtual {p1, p4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object p4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 805
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineMaxLevel(IIZ)I

    move-result v2

    invoke-virtual {p1, p4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object p4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 807
    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v3

    invoke-static {p6, v2, p5, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;ZIZ)Z

    move-result v2

    .line 806
    invoke-virtual {p1, p4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    sget-object p4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_AUDIO_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 808
    invoke-virtual {p3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v2

    invoke-static {v0, p0, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconState(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;Z)I

    move-result p0

    invoke-virtual {p1, p4, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 809
    invoke-static {v0, p6}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateAudibleLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p4

    invoke-virtual {p0, p1, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 810
    invoke-static {v0, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineEarProtectLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)I

    move-result p4

    invoke-virtual {p0, p1, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    sget-object p4, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    .line 811
    invoke-virtual {v0, p4}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object p4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 812
    invoke-virtual {p2, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p4

    invoke-static {p6, p5, p4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRowPriority(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZ)I

    move-result p4

    invoke-virtual {p0, p1, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 813
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p4

    invoke-static {p4, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconClickable(IZ)Z

    move-result p4

    invoke-virtual {p0, p1, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 814
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p4

    sget-object p5, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p2

    invoke-static {p4, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconEnabled(IZ)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 815
    invoke-virtual {p3, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p6, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applySmartViewLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    .line 816
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p6
.end method

.method static mergeRemoteStream(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 734
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$9YjGlDLN1Scf0chrWAo7btry1Mo;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$9YjGlDLN1Scf0chrWAo7btry1Mo;-><init>(Ljava/util/List;)V

    .line 735
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 736
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 738
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$YS3vq2Sy9dqxgviVNGB8iHV9WSg;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$YS3vq2Sy9dqxgviVNGB8iHV9WSg;-><init>(Ljava/util/List;)V

    .line 739
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 741
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 744
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 746
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$oKvcs09KZttxyhjyaBc1k6iqEEI;

    invoke-direct {p1, v0}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$oKvcs09KZttxyhjyaBc1k6iqEEI;-><init>(Ljava/util/List;)V

    .line 747
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 753
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 746
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method static prepareVolumePanelRow(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 700
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 701
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 700
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 703
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 702
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 705
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 704
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    :cond_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 708
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 707
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 710
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 709
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    :goto_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 713
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 712
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 715
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 714
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 717
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 716
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 719
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 718
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 721
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 720
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 723
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 722
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 725
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 724
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 727
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 726
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 729
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    .line 728
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private resetActiveState(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 572
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$BniZ-JP1PkJvo98OZ5iElYrFKec;->INSTANCE:Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$BniZ-JP1PkJvo98OZ5iElYrFKec;

    .line 573
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 575
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static shouldSetStreamVolume(IILcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 1

    .line 1035
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$d9uaDxFbRMPjkQs22J9hpdwWkJI;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$d9uaDxFbRMPjkQs22J9hpdwWkJI;-><init>(I)V

    .line 1036
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$b5tFM027Gpo0wnqAvyk2qJSearY;

    invoke-direct {p2, p1}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$b5tFM027Gpo0wnqAvyk2qJSearY;-><init>(I)V

    .line 1037
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1038
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

.method private static updateAudibleLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 1

    .line 903
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    move-result p0

    if-lez p0, :cond_0

    return p0

    .line 907
    :cond_0
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static updateLevelByIconToggle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1103
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$XCET9OArzsmiJqqVklXvPT8fEM0;

    invoke-direct {v1, p2, p0, p1}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$XCET9OArzsmiJqqVklXvPT8fEM0;-><init>(ILcom/samsung/systemui/splugins/volume/VolumePanelState;I)V

    .line 1104
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1114
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static updateLevelByProgressBar(Ljava/util/List;IIJ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;IIJ)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1042
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$CQxMkzSwMywDbmEbAZZBurLHURI;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$CQxMkzSwMywDbmEbAZZBurLHURI;-><init>(IIJ)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1051
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static updateRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 658
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 659
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$pGSHbI21ZWa1GdRBoWCVuq38-5k;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$pGSHbI21ZWa1GdRBoWCVuq38-5k;-><init>(ILcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 660
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 663
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static updateRowPriority(Ljava/util/List;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 781
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Rl4cpQgxStiYeReI_WnFjHlO_UE;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Rl4cpQgxStiYeReI_WnFjHlO_UE;-><init>(IZ)V

    .line 782
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 784
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static updateRowVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 773
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$_DfVK2xG9fexBVIwb2l8SiO-brQ;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$_DfVK2xG9fexBVIwb2l8SiO-brQ;-><init>(ZLcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 774
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 777
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static updateTracking(Ljava/util/List;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 678
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$9hta6EVgcyTCj1Bz3p7eHThAjVs;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$9hta6EVgcyTCj1Bz3p7eHThAjVs;-><init>(IZ)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 685
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static updateVolumeStates(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumeState;Lcom/samsung/systemui/splugins/volume/VolumePanelState;ILjava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Lcom/samsung/systemui/splugins/volume/VolumeState;",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            "I",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 789
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v7, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    move v5, p6

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;ZI)V

    .line 790
    invoke-interface {p0, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 821
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public reduce(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 86
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v1, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 87
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    .line 90
    sget-object v2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v10, 0x1

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 547
    :pswitch_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PANEL_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 548
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 549
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 541
    :pswitch_1
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_BACKGROUND_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 542
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 535
    :pswitch_2
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PANEL_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 536
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 527
    :pswitch_3
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 528
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 529
    invoke-virtual {v0, v1, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 530
    invoke-virtual {v0, v1, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 521
    :pswitch_4
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 522
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 515
    :pswitch_5
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 516
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 508
    :pswitch_6
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 509
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 510
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 488
    :pswitch_7
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v8, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_DISMISS_UI_WARNINGS:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 490
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_FLAG_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 491
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 495
    :cond_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 496
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 500
    :cond_1
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 501
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 502
    invoke-virtual {v0, v1, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 479
    :pswitch_8
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v1, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 480
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    .line 481
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->resetActiveState(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 482
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 483
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 472
    :pswitch_9
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 473
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 474
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 466
    :pswitch_a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_VOLUME_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 467
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 460
    :pswitch_b
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 461
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 453
    :pswitch_c
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 454
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 455
    invoke-virtual {v0, v1, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 440
    :pswitch_d
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 442
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 445
    :cond_2
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 446
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 447
    invoke-virtual {v0, v1, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 432
    :pswitch_e
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 433
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 434
    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 415
    :pswitch_f
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 417
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 418
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 419
    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 420
    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 423
    :cond_3
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 424
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 425
    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 426
    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 396
    :pswitch_10
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DENSITY_OR_FONT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {v8, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 398
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 399
    invoke-virtual {v0, v1, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 401
    :cond_4
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 402
    invoke-virtual {v8, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 404
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 405
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 408
    :cond_5
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 409
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 379
    :pswitch_11
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 380
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    .line 381
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v2

    .line 384
    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-eq v0, v3, :cond_7

    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    goto :goto_0

    .line 389
    :cond_6
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 390
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 385
    :cond_7
    :goto_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 386
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 370
    :pswitch_12
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 371
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v9, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    .line 372
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v2, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_RESCHEDULE_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 373
    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 374
    invoke-static {v9, v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 363
    :pswitch_13
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 364
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 365
    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 356
    :pswitch_14
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 357
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 358
    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 347
    :pswitch_15
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 348
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v9, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    .line 349
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v2, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 350
    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 351
    invoke-static {v9, v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 340
    :pswitch_16
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_MEDIA_VOLUME_DEFAULT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 341
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 342
    invoke-virtual {v9, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v2

    xor-int/2addr v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 327
    :pswitch_17
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 328
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v8, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v0

    .line 329
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v8, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v1

    .line 330
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;)J

    move-result-wide v2

    .line 331
    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkIfNeedToSetProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IIJ)Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 333
    :cond_8
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 334
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 310
    :pswitch_18
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v8, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v0

    .line 311
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v9, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    .line 312
    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne v0, v2, :cond_9

    .line 313
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 314
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 317
    :cond_9
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v2, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 318
    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 319
    invoke-virtual {v2, v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 320
    invoke-static {v9, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getRingerModeByIconToggle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v2

    .line 321
    invoke-static {v9, v1, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateLevelByIconToggle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 292
    :pswitch_19
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v8, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v0

    .line 293
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v8, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v1

    .line 294
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;)J

    move-result-wide v2

    .line 296
    invoke-static {v0, v1, v9}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->shouldSetStreamVolume(IILcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 297
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v4, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SET_STREAM_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 298
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v4

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 299
    invoke-virtual {v4, v5, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v4

    .line 300
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v0, v1, v2, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateLevelByProgressBar(Ljava/util/List;IIJ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 303
    :cond_a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 304
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 283
    :pswitch_1a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 284
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 285
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 286
    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 287
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateTracking(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 276
    :pswitch_1b
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_START_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 277
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 278
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v2

    invoke-static {v1, v2, v10}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateTracking(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 279
    invoke-virtual {v0, v1, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 255
    :pswitch_1c
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 256
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 257
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 260
    :cond_b
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    xor-int/2addr v0, v10

    .line 261
    invoke-static {v9, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateRowVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)Ljava/util/List;

    move-result-object v1

    .line 262
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v9, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateRowPriority(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v1

    .line 264
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v9, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v2

    .line 265
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v9, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v3

    .line 266
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v4, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_EXPAND_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 267
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v4

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 268
    invoke-virtual {v4, v5, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 269
    invoke-static {v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRowOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 270
    invoke-static {v9, v2, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 234
    :pswitch_1d
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 235
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->PENDING_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 236
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 237
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->PENDING_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 238
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 239
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 240
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 241
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 244
    :cond_c
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 245
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 246
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 247
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 248
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 193
    :pswitch_1e
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v8, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v11

    .line 194
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-virtual {v8, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;)J

    move-result-wide v12

    .line 195
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {v8, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v14

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v15

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result v7

    .line 199
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    .line 201
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v6

    .line 202
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_PRIORITY_ONLY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v16

    .line 204
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v2

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getStreamStates()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->mergeRemoteStream(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v2

    move-object/from16 v3, p2

    move v4, v11

    move v10, v6

    move-object/from16 v6, p1

    move v8, v7

    move/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateVolumeStates(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumeState;Lcom/samsung/systemui/splugins/volume/VolumePanelState;ILjava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)Ljava/util/List;

    move-result-object v1

    .line 209
    invoke-direct {v0, v1, v11}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyActiveState(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v1, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 212
    invoke-virtual {v1, v2, v11}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    .line 213
    invoke-static {v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRowOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    .line 215
    invoke-virtual {v0, v1, v12, v13}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 216
    invoke-virtual {v0, v1, v14}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 217
    invoke-virtual {v0, v1, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 218
    invoke-virtual {v0, v1, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 219
    invoke-virtual {v0, v1, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 221
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 222
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 223
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->PENDING_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v2, 0x1

    .line 224
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 227
    :cond_d
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 228
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 188
    :pswitch_1f
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 189
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 175
    :pswitch_20
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1

    .line 181
    :cond_e
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 182
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 176
    :cond_f
    :goto_1
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 177
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v2, 0x1

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_21
    move v2, v10

    .line 159
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 160
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 161
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 165
    :cond_10
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 166
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 153
    :pswitch_22
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 154
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 102
    :pswitch_23
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v1

    .line 103
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v3

    .line 104
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v4

    if-nez v4, :cond_13

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 105
    invoke-virtual {v9, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_2

    .line 109
    :cond_11
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 110
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_RESCHEDULE_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 111
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 112
    invoke-static {v9, v1, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto/16 :goto_3

    .line 115
    :cond_12
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {v2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object v4

    .line 116
    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {v2, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object v5

    .line 117
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {v2, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v6

    .line 118
    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {v2, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v7

    .line 119
    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {v2, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;

    move-result-object v8

    .line 120
    sget-object v10, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {v2, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v10

    .line 122
    sget-object v11, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v9, v11}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v11

    .line 123
    sget-object v12, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v12

    .line 125
    sget-object v13, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v9, v13}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v13

    .line 126
    sget-object v14, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v9, v14}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v14

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v15

    move/from16 v16, v10

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v2

    .line 128
    invoke-static {v15, v10, v2, v12}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 130
    invoke-static {v2, v4, v5, v8, v14}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRemoteLabel(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 131
    invoke-static {v2, v6, v7, v11}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyEarProtectLevel(Ljava/util/List;ZZI)Ljava/util/List;

    move-result-object v2

    .line 132
    invoke-direct {v0, v2, v13}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyActiveState(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 134
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v2, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 135
    invoke-virtual {v2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v2

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 136
    invoke-virtual {v2, v4, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v2

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 137
    invoke-virtual {v2, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v2

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 138
    invoke-static {v9, v1, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    move-object/from16 v4, p1

    .line 139
    invoke-virtual {v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v3, 0x1

    .line 140
    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 141
    invoke-virtual {v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 142
    invoke-virtual {v1, v2, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 143
    invoke-virtual {v1, v2, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    move/from16 v3, v16

    .line 144
    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 145
    invoke-virtual {v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 146
    invoke-virtual {v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto :goto_3

    .line 106
    :cond_13
    :goto_2
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 107
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    goto :goto_3

    :pswitch_24
    move-object v4, v8

    .line 92
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {v4, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    .line 93
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v1, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 94
    invoke-static {v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->prepareVolumePanelRow(Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 95
    invoke-virtual {v1, v2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 96
    invoke-virtual {v4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 97
    invoke-virtual {v4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 98
    invoke-virtual {v4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    :cond_14
    :goto_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
