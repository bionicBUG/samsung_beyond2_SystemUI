.class public Lcom/samsung/android/knox/dlp/RightsInfo;
.super Ljava/lang/Object;
.source "RightsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/dlp/RightsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canComment:Z

.field private canEdit:Z

.field private canExport:Z

.field private canExtract:Z

.field private canForward:Z

.field private canPrint:Z

.field private canReply:Z

.field private canReplyAll:Z

.field private canUseMacro:Z

.field private canView:Z

.field private rulesInfoObject:Lcom/samsung/android/knox/dlp/RulesInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 259
    new-instance v0, Lcom/samsung/android/knox/dlp/RightsInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/dlp/RightsInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dlp/RightsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/RightsInfo;->readfromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/dlp/RightsInfo$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/RightsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readfromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [Z

    .line 281
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 282
    new-instance v1, Lcom/samsung/android/knox/dlp/RulesInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/dlp/RulesInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->rulesInfoObject:Lcom/samsung/android/knox/dlp/RulesInfo;

    .line 283
    iget-object v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->rulesInfoObject:Lcom/samsung/android/knox/dlp/RulesInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/dlp/RulesInfo;->readFromParcel(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    .line 284
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canView:Z

    const/4 p1, 0x1

    .line 285
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canEdit:Z

    const/4 p1, 0x2

    .line 286
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExport:Z

    const/4 p1, 0x3

    .line 287
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canPrint:Z

    const/4 p1, 0x4

    .line 288
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canForward:Z

    const/4 p1, 0x5

    .line 289
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReply:Z

    const/4 p1, 0x6

    .line 290
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReplyAll:Z

    const/4 p1, 0x7

    .line 291
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExtract:Z

    const/16 p1, 0x8

    .line 292
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canComment:Z

    const/16 p1, 0x9

    .line 293
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canUseMacro:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Z

    .line 248
    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canView:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canEdit:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExport:Z

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canPrint:Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canForward:Z

    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReply:Z

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canReplyAll:Z

    const/4 v2, 0x6

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canExtract:Z

    const/4 v2, 0x7

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canComment:Z

    const/16 v2, 0x8

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->canUseMacro:Z

    const/16 v2, 0x9

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 252
    iget-object p0, p0, Lcom/samsung/android/knox/dlp/RightsInfo;->rulesInfoObject:Lcom/samsung/android/knox/dlp/RulesInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/dlp/RulesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
