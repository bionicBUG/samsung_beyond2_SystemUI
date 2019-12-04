.class public Lcom/android/systemui/statusbar/phone/util/DisplayUtil;
.super Ljava/lang/Object;
.source "DisplayUtil.java"


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;


# instance fields
.field mContext:Landroid/content/Context;

.field mRotation:I

.field mScreenSize:Landroid/graphics/Point;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->mScreenSize:Landroid/graphics/Point;

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->mContext:Landroid/content/Context;

    .line 14
    sput-object p0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->sInstance:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/util/DisplayUtil;
    .locals 1

    .line 18
    sget-object v0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->sInstance:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->sInstance:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    .line 21
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->sInstance:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    return-object p0
.end method


# virtual methods
.method public getRotation()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->mRotation:I

    return p0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->mScreenSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public setRotation(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->mRotation:I

    return-void
.end method

.method public setScreenSize(Landroid/graphics/Point;)V
    .locals 1

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->mScreenSize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
