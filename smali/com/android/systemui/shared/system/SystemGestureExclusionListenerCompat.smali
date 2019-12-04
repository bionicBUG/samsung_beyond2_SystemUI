.class public abstract Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;
.super Ljava/lang/Object;
.source "SystemGestureExclusionListenerCompat.java"


# instance fields
.field private final mDisplayId:I


# direct methods
.method static synthetic access$000(Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->mDisplayId:I

    return p0
.end method


# virtual methods
.method public abstract onExclusionChanged(Landroid/graphics/Region;)V
.end method
