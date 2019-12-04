.class public Lcom/samsung/android/knox/sdp/core/SdpException;
.super Ljava/lang/Exception;
.source "SdpException.java"


# instance fields
.field private mErrorCode:I

.field private mTimeout:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 19
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpErrno;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return-void
.end method

.method private static classify(I)I
    .locals 1

    const/16 v0, -0x63

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    move p0, v0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
