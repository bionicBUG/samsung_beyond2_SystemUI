.class public Landroidx/slice/builders/GridRowBuilder;
.super Ljava/lang/Object;
.source "GridRowBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    }
.end annotation


# instance fields
.field private final mCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/builders/GridRowBuilder$CellBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutDirection:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mCells:Ljava/util/List;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Landroidx/slice/builders/GridRowBuilder;->mLayoutDirection:I

    return-void
.end method
