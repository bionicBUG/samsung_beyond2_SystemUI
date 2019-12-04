.class public Landroidx/leanback/widget/Row;
.super Ljava/lang/Object;
.source "Row.java"


# instance fields
.field private mFlags:I

.field private mHeaderItem:Landroidx/leanback/widget/HeaderItem;

.field private mId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Landroidx/leanback/widget/Row;->mFlags:I

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Landroidx/leanback/widget/Row;->mId:J

    return-void
.end method


# virtual methods
.method public final getHeaderItem()Landroidx/leanback/widget/HeaderItem;
    .locals 0

    .line 66
    iget-object p0, p0, Landroidx/leanback/widget/Row;->mHeaderItem:Landroidx/leanback/widget/HeaderItem;

    return-object p0
.end method

.method public isRenderedAsRowView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
