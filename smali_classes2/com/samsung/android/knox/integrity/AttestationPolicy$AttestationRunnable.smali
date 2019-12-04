.class abstract Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;
.super Ljava/lang/Object;
.source "AttestationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/integrity/AttestationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AttestationRunnable"
.end annotation


# instance fields
.field callingUid:I

.field nonce:Ljava/lang/String;
