.class public Lcom/android/settingslib/net/NetworkCycleData;
.super Ljava/lang/Object;
.source "NetworkCycleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleData$Builder;
    }
.end annotation


# instance fields
.field private mEndTime:J

.field private mStartTime:J

.field private mTotalUsage:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settingslib/net/NetworkCycleData;J)J
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/android/settingslib/net/NetworkCycleData;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/settingslib/net/NetworkCycleData;J)J
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/android/settingslib/net/NetworkCycleData;->mEndTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/settingslib/net/NetworkCycleData;J)J
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/android/settingslib/net/NetworkCycleData;->mTotalUsage:J

    return-wide p1
.end method
