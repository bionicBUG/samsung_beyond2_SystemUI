.class public Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;
.super Ljava/lang/Object;
.source "BypassMotionEventInjector.java"


# instance fields
.field private final mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 18
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 19
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    return-void
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 43
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 44
    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v2, :cond_1

    .line 46
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_1
    if-ge v0, p1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object p0
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 58
    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v2, :cond_1

    .line 60
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_1
    if-ge v0, p1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object p0
.end method


# virtual methods
.method public byPassRawEvent(Landroid/view/MotionEvent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 22
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    .line 23
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v6

    const/4 v15, 0x0

    move v2, v15

    :goto_0
    if-ge v2, v5, :cond_0

    .line 26
    aget-object v3, v7, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 27
    aget-object v3, v6, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byPassRawEvent occur rawEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BypassMotionEventInjector"

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, 0x20000000

    or-int v18, v0, v1

    move-wide v0, v2

    move-wide v2, v8

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move v12, v14

    move/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v18

    .line 33
    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    .line 37
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method
