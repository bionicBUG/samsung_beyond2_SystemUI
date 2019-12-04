.class public interface abstract Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;
.super Ljava/lang/Object;
.source "CapsuleInteractor.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.bixby2.PLUGIN"
    version = 0x3ea
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.bixby2.PLUGIN"

.field public static final VERSION:I = 0x3ea


# virtual methods
.method public abstract init(Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;Landroid/content/Context;)V
.end method

.method public abstract start()V
.end method
