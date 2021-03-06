.class public Landroidx/leanback/app/SearchFragment;
.super Landroid/app/Fragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/app/SearchFragment$ExternalQuery;,
        Landroidx/leanback/app/SearchFragment$SearchResultProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ARG_PREFIX:Ljava/lang/String; = "androidx.leanback.app.SearchFragment"

.field private static final ARG_QUERY:Ljava/lang/String;

.field private static final ARG_TITLE:Ljava/lang/String;


# instance fields
.field final mAdapterObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

.field mAutoStartRecognition:Z

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalQuery:Landroidx/leanback/app/SearchFragment$ExternalQuery;

.field final mHandler:Landroid/os/Handler;

.field private mIsPaused:Z

.field private mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

.field mPendingQuery:Ljava/lang/String;

.field private mPendingStartRecognitionWhenPaused:Z

.field private mPermissionListener:Landroidx/leanback/widget/SearchBar$SearchBarPermissionListener;

.field mProvider:Landroidx/leanback/app/SearchFragment$SearchResultProvider;

.field mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field final mResultsChangedCallback:Ljava/lang/Runnable;

.field mRowsFragment:Landroidx/leanback/app/RowsFragment;

.field mSearchBar:Landroidx/leanback/widget/SearchBar;

.field private final mSetSearchResultProvider:Ljava/lang/Runnable;

.field private mSpeechRecognitionCallback:Landroidx/leanback/widget/SpeechRecognitionCallback;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field final mStartRecognitionRunnable:Ljava/lang/Runnable;

.field mStatus:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroidx/leanback/app/SearchFragment;->ARG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/leanback/app/SearchFragment;->ARG_QUERY:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroidx/leanback/app/SearchFragment;->ARG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/leanback/app/SearchFragment;->ARG_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 128
    new-instance v0, Landroidx/leanback/app/SearchFragment$1;

    invoke-direct {v0, p0}, Landroidx/leanback/app/SearchFragment$1;-><init>(Landroidx/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/SearchFragment;->mAdapterObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Landroidx/leanback/app/SearchFragment$2;

    invoke-direct {v0, p0}, Landroidx/leanback/app/SearchFragment$2;-><init>(Landroidx/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/SearchFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Landroidx/leanback/app/SearchFragment$3;

    invoke-direct {v0, p0}, Landroidx/leanback/app/SearchFragment$3;-><init>(Landroidx/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/SearchFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    .line 205
    new-instance v0, Landroidx/leanback/app/SearchFragment$4;

    invoke-direct {v0, p0}, Landroidx/leanback/app/SearchFragment$4;-><init>(Landroidx/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/SearchFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Landroidx/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Landroidx/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    .line 234
    new-instance v0, Landroidx/leanback/app/SearchFragment$5;

    invoke-direct {v0, p0}, Landroidx/leanback/app/SearchFragment$5;-><init>(Landroidx/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/SearchFragment;->mPermissionListener:Landroidx/leanback/widget/SearchBar$SearchBarPermissionListener;

    return-void
.end method

.method private applyExternalQuery()V
    .locals 2

    .line 735
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mExternalQuery:Landroidx/leanback/app/SearchFragment$ExternalQuery;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    if-nez v1, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    iget-object v0, v0, Landroidx/leanback/app/SearchFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mExternalQuery:Landroidx/leanback/app/SearchFragment$ExternalQuery;

    iget-boolean v1, v0, Landroidx/leanback/app/SearchFragment$ExternalQuery;->mSubmit:Z

    if-eqz v1, :cond_1

    .line 740
    iget-object v0, v0, Landroidx/leanback/app/SearchFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/leanback/app/SearchFragment;->submitQuery(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 742
    iput-object v0, p0, Landroidx/leanback/app/SearchFragment;->mExternalQuery:Landroidx/leanback/app/SearchFragment$ExternalQuery;

    :cond_2
    :goto_0
    return-void
.end method

.method private focusOnResults()V
    .locals 1

    .line 705
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    .line 706
    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 709
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    iget v0, p0, Landroidx/leanback/app/SearchFragment;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroidx/leanback/app/SearchFragment;->mStatus:I

    :cond_1
    :goto_0
    return-void
.end method

.method private onSetSearchResultProvider()V
    .locals 2

    .line 715
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/leanback/app/SearchFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 716
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/leanback/app/SearchFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 749
    :cond_0
    sget-object v0, Landroidx/leanback/app/SearchFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    sget-object v0, Landroidx/leanback/app/SearchFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/leanback/app/SearchFragment;->setSearchQuery(Ljava/lang/String;)V

    .line 753
    :cond_1
    sget-object v0, Landroidx/leanback/app/SearchFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 754
    sget-object v0, Landroidx/leanback/app/SearchFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/app/SearchFragment;->setTitle(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private releaseRecognizer()V
    .locals 2

    .line 443
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    .line 445
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 446
    iput-object v1, p0, Landroidx/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    :cond_0
    return-void
.end method

.method private setSearchQuery(Ljava/lang/String;)V
    .locals 0

    .line 759
    iget-object p0, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method executePendingQuery()V
    .locals 2

    .line 727
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/app/SearchFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 729
    iput-object v1, p0, Landroidx/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    .line 730
    invoke-virtual {p0, v0}, Landroidx/leanback/app/SearchFragment;->retrieveResults(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 288
    iget-boolean v0, p0, Landroidx/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    iput-boolean v0, p0, Landroidx/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    .line 291
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 297
    sget p3, Landroidx/leanback/R$layout;->lb_search_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 299
    sget p2, Landroidx/leanback/R$id;->lb_search_frame:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/BrowseFrameLayout;

    .line 300
    sget p3, Landroidx/leanback/R$id;->lb_search_bar:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/leanback/widget/SearchBar;

    iput-object p3, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    .line 301
    iget-object p3, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    new-instance v0, Landroidx/leanback/app/SearchFragment$6;

    invoke-direct {v0, p0}, Landroidx/leanback/app/SearchFragment$6;-><init>(Landroidx/leanback/app/SearchFragment;)V

    invoke-virtual {p3, v0}, Landroidx/leanback/widget/SearchBar;->setSearchBarListener(Landroidx/leanback/widget/SearchBar$SearchBarListener;)V

    .line 325
    iget-object p3, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mSpeechRecognitionCallback:Landroidx/leanback/widget/SpeechRecognitionCallback;

    invoke-virtual {p3, v0}, Landroidx/leanback/widget/SearchBar;->setSpeechRecognitionCallback(Landroidx/leanback/widget/SpeechRecognitionCallback;)V

    .line 326
    iget-object p3, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mPermissionListener:Landroidx/leanback/widget/SearchBar$SearchBarPermissionListener;

    invoke-virtual {p3, v0}, Landroidx/leanback/widget/SearchBar;->setPermissionListener(Landroidx/leanback/widget/SearchBar$SearchBarPermissionListener;)V

    .line 327
    invoke-direct {p0}, Landroidx/leanback/app/SearchFragment;->applyExternalQuery()V

    .line 329
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-direct {p0, p3}, Landroidx/leanback/app/SearchFragment;->readArguments(Landroid/os/Bundle;)V

    .line 330
    iget-object p3, p0, Landroidx/leanback/app/SearchFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 331
    invoke-virtual {p0, p3}, Landroidx/leanback/app/SearchFragment;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :cond_0
    iget-object p3, p0, Landroidx/leanback/app/SearchFragment;->mTitle:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 334
    invoke-virtual {p0, p3}, Landroidx/leanback/app/SearchFragment;->setTitle(Ljava/lang/String;)V

    .line 338
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p3

    sget v0, Landroidx/leanback/R$id;->lb_results_frame:I

    invoke-virtual {p3, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p3

    if-nez p3, :cond_2

    .line 339
    new-instance p3, Landroidx/leanback/app/RowsFragment;

    invoke-direct {p3}, Landroidx/leanback/app/RowsFragment;-><init>()V

    iput-object p3, p0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    .line 340
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p3

    sget v0, Landroidx/leanback/R$id;->lb_results_frame:I

    iget-object v1, p0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    .line 341
    invoke-virtual {p3, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p3

    sget v0, Landroidx/leanback/R$id;->lb_results_frame:I

    .line 344
    invoke-virtual {p3, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p3

    check-cast p3, Landroidx/leanback/app/RowsFragment;

    iput-object p3, p0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    .line 346
    :goto_0
    iget-object p3, p0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    new-instance v0, Landroidx/leanback/app/SearchFragment$7;

    invoke-direct {v0, p0}, Landroidx/leanback/app/SearchFragment$7;-><init>(Landroidx/leanback/app/SearchFragment;)V

    invoke-virtual {p3, v0}, Landroidx/leanback/app/RowsFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 361
    iget-object p3, p0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {p3, v0}, Landroidx/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 362
    iget-object p3, p0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroidx/leanback/app/RowsFragment;->setExpand(Z)V

    .line 363
    iget-object p3, p0, Landroidx/leanback/app/SearchFragment;->mProvider:Landroidx/leanback/app/SearchFragment$SearchResultProvider;

    if-eqz p3, :cond_3

    .line 364
    invoke-direct {p0}, Landroidx/leanback/app/SearchFragment;->onSetSearchResultProvider()V

    .line 367
    :cond_3
    new-instance p3, Landroidx/leanback/app/SearchFragment$8;

    invoke-direct {p3, p0}, Landroidx/leanback/app/SearchFragment$8;-><init>(Landroidx/leanback/app/SearchFragment;)V

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 428
    invoke-virtual {p0}, Landroidx/leanback/app/SearchFragment;->releaseAdapter()V

    .line 429
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 421
    invoke-direct {p0}, Landroidx/leanback/app/SearchFragment;->releaseRecognizer()V

    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Landroidx/leanback/app/SearchFragment;->mIsPaused:Z

    .line 423
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    if-nez p1, :cond_0

    .line 246
    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 247
    aget-object p2, p2, p1

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 249
    invoke-virtual {p0}, Landroidx/leanback/app/SearchFragment;->startRecognition()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 403
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Landroidx/leanback/app/SearchFragment;->mIsPaused:Z

    .line 405
    iget-object v1, p0, Landroidx/leanback/app/SearchFragment;->mSpeechRecognitionCallback:Landroidx/leanback/widget/SpeechRecognitionCallback;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_0

    .line 407
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 406
    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 408
    iget-object v1, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    iget-object v2, p0, Landroidx/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    .line 410
    :cond_0
    iget-boolean v1, p0, Landroidx/leanback/app/SearchFragment;->mPendingStartRecognitionWhenPaused:Z

    if-eqz v1, :cond_1

    .line 411
    iput-boolean v0, p0, Landroidx/leanback/app/SearchFragment;->mPendingStartRecognitionWhenPaused:Z

    .line 412
    iget-object p0, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->startRecognition()V

    goto :goto_0

    .line 415
    :cond_1
    iget-object p0, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 389
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 391
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 393
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Landroidx/leanback/R$dimen;->lb_search_browse_rows_align_top:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x0

    .line 394
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffset(I)V

    const/high16 v2, -0x40800000    # -1.0f

    .line 395
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffsetPercent(F)V

    .line 396
    invoke-virtual {v0, p0}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignmentOffset(I)V

    .line 397
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 398
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignment(I)V

    return-void
.end method

.method queryComplete()V
    .locals 1

    .line 685
    iget v0, p0, Landroidx/leanback/app/SearchFragment;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/leanback/app/SearchFragment;->mStatus:I

    .line 686
    invoke-direct {p0}, Landroidx/leanback/app/SearchFragment;->focusOnResults()V

    return-void
.end method

.method releaseAdapter()V
    .locals 2

    .line 720
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    .line 721
    iget-object v1, p0, Landroidx/leanback/app/SearchFragment;->mAdapterObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ObjectAdapter;->unregisterObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V

    const/4 v0, 0x0

    .line 722
    iput-object v0, p0, Landroidx/leanback/app/SearchFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    :cond_0
    return-void
.end method

.method retrieveResults(Ljava/lang/String;)V
    .locals 1

    .line 671
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mProvider:Landroidx/leanback/app/SearchFragment$SearchResultProvider;

    invoke-interface {v0, p1}, Landroidx/leanback/app/SearchFragment$SearchResultProvider;->onQueryTextChange(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 672
    iget p1, p0, Landroidx/leanback/app/SearchFragment;->mStatus:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Landroidx/leanback/app/SearchFragment;->mStatus:I

    :cond_0
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 528
    iput-object p1, p0, Landroidx/leanback/app/SearchFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 529
    iget-object p0, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    if-eqz p0, :cond_0

    .line 530
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchBar;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 507
    iput-object p1, p0, Landroidx/leanback/app/SearchFragment;->mTitle:Ljava/lang/String;

    .line 508
    iget-object p0, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    if-eqz p0, :cond_0

    .line 509
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchBar;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startRecognition()V
    .locals 1

    .line 458
    iget-boolean v0, p0, Landroidx/leanback/app/SearchFragment;->mIsPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 459
    iput-boolean v0, p0, Landroidx/leanback/app/SearchFragment;->mPendingStartRecognitionWhenPaused:Z

    goto :goto_0

    .line 461
    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->startRecognition()V

    :goto_0
    return-void
.end method

.method submitQuery(Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-virtual {p0}, Landroidx/leanback/app/SearchFragment;->queryComplete()V

    .line 678
    iget-object p0, p0, Landroidx/leanback/app/SearchFragment;->mProvider:Landroidx/leanback/app/SearchFragment$SearchResultProvider;

    if-eqz p0, :cond_0

    .line 679
    invoke-interface {p0, p1}, Landroidx/leanback/app/SearchFragment$SearchResultProvider;->onQueryTextSubmit(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method updateFocus()V
    .locals 2

    .line 696
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowFragment;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/app/SearchFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-ne v0, v1, :cond_0

    .line 698
    invoke-direct {p0}, Landroidx/leanback/app/SearchFragment;->focusOnResults()V

    goto :goto_0

    .line 700
    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    :goto_0
    return-void
.end method

.method updateSearchBarVisibility()V
    .locals 2

    .line 690
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/leanback/app/RowsFragment;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 691
    :goto_0
    iget-object v1, p0, Landroidx/leanback/app/SearchFragment;->mSearchBar:Landroidx/leanback/widget/SearchBar;

    if-lez v0, :cond_2

    iget-object p0, p0, Landroidx/leanback/app/SearchFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eqz p0, :cond_2

    .line 692
    invoke-virtual {p0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 691
    :goto_2
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
