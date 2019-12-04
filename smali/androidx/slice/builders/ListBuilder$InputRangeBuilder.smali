.class public Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputRangeBuilder"
.end annotation


# instance fields
.field private mLayoutDirection:I

.field private mMax:I

.field private mMin:I

.field private mValue:I

.field private mValueSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 665
    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    const/16 v1, 0x64

    .line 666
    iput v1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    .line 667
    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    .line 668
    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    const/4 v0, -0x1

    .line 676
    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mLayoutDirection:I

    return-void
.end method
