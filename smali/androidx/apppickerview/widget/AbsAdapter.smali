.class abstract Landroidx/apppickerview/widget/AbsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AbsAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field private static APP_LABEL_ASCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static APP_LABEL_ASCENDING_IGNORE_CASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static APP_LABEL_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static APP_LABEL_DESCENDING_IGNORE_CASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDataManager:Landroidx/apppickerview/widget/DataManager;

.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSetFiltered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnBindListener:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

.field private mOrder:I

.field private mPositionToSectionIndex:[I

.field private mSearchText:Ljava/lang/String;

.field private mSectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSections:[Ljava/lang/String;

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$1;

    invoke-direct {v0}, Landroidx/apppickerview/widget/AbsAdapter$1;-><init>()V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING:Ljava/util/Comparator;

    .line 72
    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$2;

    invoke-direct {v0}, Landroidx/apppickerview/widget/AbsAdapter$2;-><init>()V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING_IGNORE_CASE:Ljava/util/Comparator;

    .line 81
    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$3;

    invoke-direct {v0}, Landroidx/apppickerview/widget/AbsAdapter$3;-><init>()V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING:Ljava/util/Comparator;

    .line 90
    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$4;

    invoke-direct {v0}, Landroidx/apppickerview/widget/AbsAdapter$4;-><init>()V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING_IGNORE_CASE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 113
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mIconCache:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 104
    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    const-string v0, ""

    .line 110
    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    .line 115
    iput p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    .line 116
    iput p3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOrder:I

    .line 117
    invoke-static {}, Landroidx/apppickerview/widget/DataManager;->getInstance()Landroidx/apppickerview/widget/DataManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataManager:Landroidx/apppickerview/widget/DataManager;

    return-void
.end method

.method static synthetic access$000(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Landroidx/apppickerview/widget/AbsAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 62
    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Landroidx/apppickerview/widget/AbsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroidx/apppickerview/widget/AbsAdapter;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap()V

    return-void
.end method

.method private static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroidx/reflect/app/SeslApplicationPackageManagerReflector;->semGetApplicationIconForIconTray(Ljava/lang/Object;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private getAppLabelComparator(I)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 170
    :cond_0
    sget-object p0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING_IGNORE_CASE:Ljava/util/Comparator;

    return-object p0

    .line 168
    :cond_1
    sget-object p0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING:Ljava/util/Comparator;

    return-object p0

    .line 166
    :cond_2
    sget-object p0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING_IGNORE_CASE:Ljava/util/Comparator;

    return-object p0

    .line 164
    :cond_3
    sget-object p0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING:Ljava/util/Comparator;

    return-object p0
.end method

.method public static getAppPickerAdapter(Landroid/content/Context;Ljava/util/List;IILjava/util/List;)Landroidx/apppickerview/widget/AbsAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/List<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;)",
            "Landroidx/apppickerview/widget/AbsAdapter;"
        }
    .end annotation

    const/4 v0, 0x7

    if-lt p2, v0, :cond_0

    .line 122
    new-instance v0, Landroidx/apppickerview/widget/GridAdapter;

    invoke-direct {v0, p0, p2, p3}, Landroidx/apppickerview/widget/GridAdapter;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/apppickerview/widget/ListAdapter;

    invoke-direct {v0, p0, p2, p3}, Landroidx/apppickerview/widget/ListAdapter;-><init>(Landroid/content/Context;II)V

    :goto_0
    const/4 p0, 0x0

    .line 124
    invoke-virtual {v0, p1, p0, p4}, Landroidx/apppickerview/widget/AbsAdapter;->resetPackages(Ljava/util/List;ZLjava/util/List;)V

    return-object v0
.end method

.method private refreshSectionMap()V
    .locals 9

    .line 306
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_5

    .line 310
    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 312
    new-instance v1, Landroid/os/LocaleList;

    new-array v2, v4, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v5, v2, v3

    invoke-direct {v1, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 314
    :cond_0
    new-instance v2, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    .line 315
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v5

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    new-array v7, v4, [Ljava/util/Locale;

    .line 317
    invoke-virtual {v1, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v2, v7}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v4, [Ljava/util/Locale;

    .line 319
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v5, v1, v3

    invoke-virtual {v2, v1}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 320
    invoke-virtual {v2}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v1

    .line 321
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mPositionToSectionIndex:[I

    .line 323
    :goto_1
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 324
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, ""

    :cond_2
    invoke-virtual {v1, v2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v2

    .line 326
    invoke-virtual {v1, v2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 327
    iget-object v5, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 328
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v5, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_3
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mPositionToSectionIndex:[I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 333
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    .line 334
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_5
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 257
    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$5;

    invoke-direct {v0, p0}, Landroidx/apppickerview/widget/AbsAdapter$5;-><init>(Landroidx/apppickerview/widget/AbsAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 0

    .line 239
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPositionForSection(I)I
    .locals 1

    .line 291
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSectionForPosition(I)I
    .locals 2

    .line 295
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mPositionToSectionIndex:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    .line 296
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 298
    :cond_0
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mPositionToSectionIndex:[I

    aget p0, p0, p1

    return p0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 0

    .line 302
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    return-object p0
.end method

.method protected hasAllAppsInList()Z
    .locals 1

    .line 251
    iget p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected limitFontLarge(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->limitFontScale(Landroid/widget/TextView;)F

    move-result p0

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method protected limitFontLarge2LinesHeight(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->limitFontScale(Landroid/widget/TextView;)F

    move-result p0

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    .line 353
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_0
    return-void
.end method

.method protected limitFontScale(Landroid/widget/TextView;)F
    .locals 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 338
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpl-float v1, p0, v0

    .line 339
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    if-lez v1, :cond_0

    div-float/2addr p1, p0

    mul-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 177
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 178
    move-object v1, p1

    check-cast v1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    .line 180
    instance-of p1, p1, Landroidx/apppickerview/widget/AppPickerView$HeaderViewHolder;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 182
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mIconCache:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 183
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mIconCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    :cond_0
    if-nez p1, :cond_1

    .line 187
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/apppickerview/widget/AbsAdapter;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 188
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mIconCache:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 189
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_1
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 194
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 196
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 198
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 199
    iget-object v5, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroidx/apppickerview/R$attr;->colorPrimary:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 200
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_2

    .line 203
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_1

    .line 205
    :cond_2
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget v6, v4, Landroid/util/TypedValue;->data:I

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 207
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    const/16 v8, 0x12

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppLabel()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 212
    :cond_4
    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppLabel()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    :goto_2
    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :cond_5
    invoke-virtual {p0, v1, p2, v0}, Landroidx/apppickerview/widget/AbsAdapter;->onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V

    .line 219
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOnBindListener:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

    if-eqz p0, :cond_6

    .line 220
    invoke-interface {p0, v1, p2, v0}, Landroidx/apppickerview/widget/AppPickerView$OnBindListener;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method abstract onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end method

.method resetPackages(Ljava/util/List;ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataManager:Landroidx/apppickerview/widget/DataManager;

    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p3}, Landroidx/apppickerview/widget/DataManager;->resetPackages(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    .line 131
    iget p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOrder:I

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppLabelComparator(I)Ljava/util/Comparator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p1, p3, :cond_0

    .line 133
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    iget p3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOrder:I

    invoke-direct {p0, p3}, Landroidx/apppickerview/widget/AbsAdapter;->getAppLabelComparator(I)Ljava/util/Comparator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 139
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    const/4 p3, 0x0

    new-instance v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    const-string v1, "all_apps"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 142
    :cond_1
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    .line 143
    invoke-direct {p0}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap()V

    if-eqz p2, :cond_2

    .line 145
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V
    .locals 0
    .param p1    # Landroidx/apppickerview/widget/AppPickerView$OnBindListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 247
    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOnBindListener:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

    return-void
.end method
