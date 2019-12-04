.class public Lcom/android/systemui/widget/SystemUIWidgetRes;
.super Ljava/lang/Object;
.source "SystemUIWidgetRes.java"


# static fields
.field private static sInstance:Lcom/android/systemui/widget/SystemUIWidgetRes;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mResIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-direct {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;-><init>()V

    sput-object v0, Lcom/android/systemui/widget/SystemUIWidgetRes;->sInstance:Lcom/android/systemui/widget/SystemUIWidgetRes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mResIds:Ljava/util/Map;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;
    .locals 2

    if-eqz p0, :cond_0

    .line 24
    sget-object v0, Lcom/android/systemui/widget/SystemUIWidgetRes;->sInstance:Lcom/android/systemui/widget/SystemUIWidgetRes;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 25
    iput-object p0, v0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mContext:Landroid/content/Context;

    .line 27
    :cond_0
    sget-object p0, Lcom/android/systemui/widget/SystemUIWidgetRes;->sInstance:Lcom/android/systemui/widget/SystemUIWidgetRes;

    return-object p0
.end method


# virtual methods
.method getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mResIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_1

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIWidgetRes"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIWidgetRes;->mResIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return p2
.end method
