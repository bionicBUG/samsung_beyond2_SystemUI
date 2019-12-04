.class public Lcom/android/systemui/volume/middleware/AudioManagerController;
.super Ljava/lang/Object;
.source "AudioManagerController.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeMiddleware<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field private mUpdatedActionPanelShow:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-void
.end method

.method static synthetic lambda$apply$0(ZLjava/util/List;Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)V
    .locals 2

    .line 49
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTE_SUPPORT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {p3, v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 50
    :goto_1
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    if-eq v0, v1, :cond_2

    .line 51
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne v0, v1, :cond_3

    :cond_2
    xor-int/lit8 p0, p0, 0x1

    :cond_3
    if-eqz p0, :cond_4

    .line 55
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 57
    :cond_4
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method static synthetic lambda$applyState$1(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 150
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

.method static synthetic lambda$applyState$2(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;
    .locals 1

    .line 151
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$applyState$3(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 170
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

.method static synthetic lambda$applyState$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;
    .locals 1

    .line 171
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setStreamVolumeForDualAudio$5(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 208
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

.method static synthetic lambda$setStreamVolumeForDualAudio$6(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;
    .locals 1

    .line 210
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private setStreamVolumeForDualAudio(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;II)V"
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$D4N6Ap7SCzsNiMa5zCDh-KUsL9Y;

    invoke-direct {v0, p2}, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$D4N6Ap7SCzsNiMa5zCDh-KUsL9Y;-><init>(I)V

    .line 208
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$ukqhdRk-GD9cUlDQE-12PY1VO3Y;->INSTANCE:Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$ukqhdRk-GD9cUlDQE-12PY1VO3Y;

    .line 209
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 212
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 213
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p2, p3, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 32
    sget-object v2, Lcom/android/systemui/volume/middleware/AudioManagerController$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_9

    const/4 v5, 0x2

    if-eq v2, v5, :cond_7

    const/4 v5, 0x3

    if-eq v2, v5, :cond_5

    const/4 v5, 0x4

    if-eq v2, v5, :cond_0

    goto/16 :goto_3

    .line 78
    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mUpdatedActionPanelShow:Z

    if-nez v2, :cond_6

    .line 79
    iput-boolean v3, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mUpdatedActionPanelShow:Z

    .line 80
    iget-object v2, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->DEVICES_FOR_STREAM_MUSIC:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v2, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 81
    iget-object v5, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 84
    sget v5, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->DEVICE_NONE:I

    .line 87
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SAFE_MEDIA_VOLUME_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v2, v6, v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v2

    .line 88
    iget-object v6, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SAFE_MEDIA_VOLUME_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v6

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v7

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v8

    .line 95
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 96
    sget v10, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget v10, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->DEVICE_NONE:I

    if-eq v5, v10, :cond_2

    .line 98
    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object v9, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v10, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-interface {v9, v10, v12}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 100
    iget-object v10, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v12, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v4

    invoke-interface {v10, v12, v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_2
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 105
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 106
    sget v12, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 109
    sget v13, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v13, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v14, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_BLUETOOTH_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v15, v4, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v13

    .line 113
    iget-object v14, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v15, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_USER_IN_CALL:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v11, v4, [Ljava/lang/Object;

    invoke-interface {v14, v15, v11}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v13, :cond_3

    .line 115
    iget-object v11, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v14, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v15, v4, [Ljava/lang/Object;

    invoke-interface {v11, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 116
    invoke-interface {v7, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 119
    :cond_3
    invoke-interface {v7, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-interface {v8, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 123
    :cond_4
    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    invoke-interface {v8, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    const/4 v11, 0x0

    .line 127
    :goto_2
    new-instance v10, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v10, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v0, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v12, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v4, v4, [Ljava/lang/Object;

    .line 128
    invoke-interface {v0, v12, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10, v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 129
    invoke-virtual {v0, v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 130
    invoke-virtual {v0, v1, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 131
    invoke-virtual {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 132
    invoke-virtual {v0, v1, v11}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 134
    invoke-virtual {v0, v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 135
    invoke-virtual {v0, v1, v13}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    return-object v0

    .line 75
    :cond_5
    iget-object v0, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    :cond_6
    :goto_3
    return-object v1

    .line 41
    :cond_7
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getEnabledStreamList()Ljava/util/List;

    move-result-object v3

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getDisabledStreamList()Ljava/util/List;

    move-result-object v5

    .line 45
    iget-object v6, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_AUTO_MUTE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v6

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getStreamStates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v7, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$BRgxJd8gqczR79o-VmgZGIydOUU;

    invoke-direct {v7, v6, v3, v5}, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$BRgxJd8gqczR79o-VmgZGIydOUU;-><init>(ZLjava/util/List;Ljava/util/List;)V

    .line 47
    invoke-interface {v1, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 62
    iget-boolean v1, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mUpdatedActionPanelShow:Z

    if-eqz v1, :cond_8

    .line 63
    iget-object v1, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SAFE_MEDIA_VOLUME_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v1, v6, v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v1

    .line 64
    iget-object v0, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SAFE_MEDIA_VOLUME_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v0

    .line 65
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {v2, v4, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v1

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 66
    invoke-virtual {v1, v4, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 70
    :cond_8
    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabledStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setDisabledStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    return-object v0

    .line 34
    :cond_9
    iget-object v0, v0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->EAR_PROTECT_LIMIT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x9

    .line 36
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 37
    invoke-virtual {v2, v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0
.end method

.method public applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 5

    .line 147
    sget-object v0, Lcom/android/systemui/volume/middleware/AudioManagerController$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 200
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->disableSafeMediaVolume()V

    goto/16 :goto_1

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->initSound(I)V

    .line 196
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound()V

    goto/16 :goto_1

    .line 191
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mUpdatedActionPanelShow:Z

    goto/16 :goto_1

    .line 185
    :pswitch_3
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setMediaDefault(Z)V

    .line 187
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->forceVolumeControlStream(I)V

    goto/16 :goto_1

    .line 168
    :pswitch_4
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 169
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$r8FwCG6OX9jPhdOrz5LEDLZvxoY;

    invoke-direct {v4, v0}, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$r8FwCG6OX9jPhdOrz5LEDLZvxoY;-><init>(I)V

    .line 170
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$U3iA3kXxQVSXTB0lhl8OWFGdblw;->INSTANCE:Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$U3iA3kXxQVSXTB0lhl8OWFGdblw;

    .line 171
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 172
    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 174
    iget-object v3, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    .line 175
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq v0, v3, :cond_1

    :cond_0
    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne v0, v3, :cond_2

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, v0, v2}, Lcom/android/systemui/volume/middleware/AudioManagerController;->setStreamVolumeForDualAudio(Ljava/util/List;II)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {v3, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolume(II)V

    .line 181
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    invoke-interface {p0, p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setRingerMode(IZ)V

    goto :goto_1

    .line 149
    :pswitch_5
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 150
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$raBCuL-D9zwUGAdwq7izykT76GM;

    invoke-direct {v3, v0}, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$raBCuL-D9zwUGAdwq7izykT76GM;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$cnItP7UoBXAQeBlEs5ouDFkZOsM;->INSTANCE:Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$cnItP7UoBXAQeBlEs5ouDFkZOsM;

    .line 151
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 152
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 154
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v2

    .line 155
    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    if-eq v0, v3, :cond_3

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne v0, v3, :cond_4

    if-nez v2, :cond_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 159
    :cond_4
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq v0, v2, :cond_6

    :cond_5
    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne v0, v2, :cond_7

    .line 161
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->setStreamVolumeForDualAudio(Ljava/util/List;II)V

    goto :goto_1

    .line 163
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolume(II)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic applyState(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method
