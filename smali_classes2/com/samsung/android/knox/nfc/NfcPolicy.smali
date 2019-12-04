.class public Lcom/samsung/android/knox/nfc/NfcPolicy;
.super Ljava/lang/Object;
.source "NfcPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mSync:Ljava/lang/Object;

    const-string v0, "NfcPolicy"

    .line 44
    sput-object v0, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    return-void
.end method
