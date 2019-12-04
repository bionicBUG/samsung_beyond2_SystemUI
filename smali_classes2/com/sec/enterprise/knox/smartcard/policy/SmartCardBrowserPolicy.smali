.class public Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;
.source "SmartCardBrowserPolicy.java"


# static fields
.field private static final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->mSync:Ljava/lang/Object;

    return-void
.end method
