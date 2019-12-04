.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$kPr5DSStyA4TlXl9NRHJJiDgZXI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$kPr5DSStyA4TlXl9NRHJJiDgZXI;->f$0:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/wifi/-$$Lambda$kPr5DSStyA4TlXl9NRHJJiDgZXI;->f$0:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    invoke-interface {p0}, Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;->onIpMacInfoUpdated()V

    return-void
.end method
