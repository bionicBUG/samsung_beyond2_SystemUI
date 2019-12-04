.class public Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;
.super Ljava/lang/Object;
.source "DataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/DataUsageView$Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesResult"
.end annotation


# instance fields
.field public final roundedBytes:J

.field public final units:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;->value:Ljava/lang/String;

    .line 354
    iput-object p2, p0, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;->units:Ljava/lang/String;

    .line 355
    iput-wide p3, p0, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;->roundedBytes:J

    return-void
.end method
