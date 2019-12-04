.class public Lcom/android/systemui/shared/system/MetricsLoggerCompat;
.super Ljava/lang/Object;
.source "MetricsLoggerCompat.java"


# instance fields
.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/MetricsLoggerCompat;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method
