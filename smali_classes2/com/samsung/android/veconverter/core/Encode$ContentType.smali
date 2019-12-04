.class public final Lcom/samsung/android/veconverter/core/Encode$ContentType;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/veconverter/core/Encode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentType"
.end annotation


# static fields
.field public static final sSupportedVideoTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    .line 306
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/3gpp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/3gpp2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/mp4v-es"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/3gp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/avi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/x-ms-wmv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/x-ms-asf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/divx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/mpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/x-matroska"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/flv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/mp2ts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/samsung/android/veconverter/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/webm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
