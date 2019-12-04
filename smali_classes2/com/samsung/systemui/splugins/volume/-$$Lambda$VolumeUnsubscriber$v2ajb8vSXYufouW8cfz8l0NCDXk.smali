.class public final synthetic Lcom/samsung/systemui/splugins/volume/-$$Lambda$VolumeUnsubscriber$v2ajb8vSXYufouW8cfz8l0NCDXk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/-$$Lambda$VolumeUnsubscriber$v2ajb8vSXYufouW8cfz8l0NCDXk;->f$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/-$$Lambda$VolumeUnsubscriber$v2ajb8vSXYufouW8cfz8l0NCDXk;->f$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->lambda$dispose$0$VolumeUnsubscriber()V

    return-void
.end method
