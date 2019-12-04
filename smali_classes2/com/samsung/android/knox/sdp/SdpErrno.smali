.class public Lcom/samsung/android/knox/sdp/SdpErrno;
.super Ljava/lang/Object;
.source "SdpErrno.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/16 v0, -0x63

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown error"

    goto :goto_0

    :pswitch_0
    const-string p0, "No error"

    goto :goto_0

    :pswitch_1
    const-string p0, "Invalid password"

    goto :goto_0

    :pswitch_2
    const-string p0, "Invalid reset token"

    goto :goto_0

    :pswitch_3
    const-string p0, "Invalid parameter"

    goto :goto_0

    :pswitch_4
    const-string p0, "SDP engine already exists"

    goto :goto_0

    :pswitch_5
    const-string p0, "SDP engine does not exist"

    goto :goto_0

    :pswitch_6
    const-string p0, "SDP engine is locked"

    goto :goto_0

    :pswitch_7
    const-string p0, "SDP engine access denied"

    goto :goto_0

    :pswitch_8
    const-string p0, "SDP engine is throttled"

    goto :goto_0

    :pswitch_9
    const-string p0, "License required"

    goto :goto_0

    :pswitch_a
    const-string p0, "SDP not supported device"

    goto :goto_0

    :cond_0
    :pswitch_b
    const-string p0, "Internal error occurred"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
