.class public Landroidx/slice/builders/ListBuilder$RangeBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeBuilder"
.end annotation


# instance fields
.field private mLayoutDirection:I

.field private mMax:I

.field private mValueSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 501
    iput v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mMax:I

    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mValueSet:Z

    const/4 v0, -0x1

    .line 507
    iput v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mLayoutDirection:I

    return-void
.end method
