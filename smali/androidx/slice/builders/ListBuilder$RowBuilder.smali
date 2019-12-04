.class public Landroidx/slice/builders/ListBuilder$RowBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowBuilder"
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mEndItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEndLoads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mEndTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHasEndActionOrToggle:Z

.field private mHasEndImage:Z

.field private mLayoutDirection:I

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleLoading:Z

.field private mTimeStamp:J

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleAction:Landroidx/slice/builders/SliceAction;

.field private mTitleActionLoading:Z

.field private mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mTitleImageMode:I

.field private mTitleItemLoading:Z

.field private mTitleLoading:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 936
    iput-wide v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTimeStamp:J

    const/4 v0, -0x1

    .line 947
    iput v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mLayoutDirection:I

    .line 948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndItems:Ljava/util/List;

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndTypes:Ljava/util/List;

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndLoads:Ljava/util/List;

    const/4 v0, 0x0

    .line 973
    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 936
    iput-wide v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTimeStamp:J

    const/4 v0, -0x1

    .line 947
    iput v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mLayoutDirection:I

    .line 948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndItems:Ljava/util/List;

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndTypes:Ljava/util/List;

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndLoads:Ljava/util/List;

    .line 981
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1164
    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method public addEndItem(Landroidx/core/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1185
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndActionOrToggle:Z

    if-nez v0, :cond_0

    .line 1190
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndItems:Ljava/util/List;

    new-instance v1, Landroidx/core/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    iget-object p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndTypes:Ljava/util/List;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    iget-object p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndLoads:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    iput-boolean p2, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndImage:Z

    return-object p0

    .line 1186
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to add an icon to end items when anaction has already been added. End items cannot have a mixture of actions and icons."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1383
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEndItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1399
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndItems:Ljava/util/List;

    return-object p0
.end method

.method public getEndLoads()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1415
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndLoads:Ljava/util/List;

    return-object p0
.end method

.method public getEndTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1407
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndTypes:Ljava/util/List;

    return-object p0
.end method

.method public getLayoutDirection()I
    .locals 0

    .line 1391
    iget p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mLayoutDirection:I

    return p0
.end method

.method public getPrimaryAction()Landroidx/slice/builders/SliceAction;
    .locals 0

    .line 1343
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1367
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1303
    iget-wide v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTimeStamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1351
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleAction()Landroidx/slice/builders/SliceAction;
    .locals 0

    .line 1335
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 1327
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public getTitleImageMode()I
    .locals 0

    .line 1319
    iget p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleImageMode:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 1263
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isSubtitleLoading()Z
    .locals 0

    .line 1375
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    return p0
.end method

.method public isTitleActionLoading()Z
    .locals 0

    .line 1423
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleActionLoading:Z

    return p0
.end method

.method public isTitleItemLoading()Z
    .locals 0

    .line 1311
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleItemLoading:Z

    return p0
.end method

.method public isTitleLoading()Z
    .locals 0

    .line 1359
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    return p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1243
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 0
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1079
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1089
    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1104
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 1105
    iput-boolean p2, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    return-object p0
.end method