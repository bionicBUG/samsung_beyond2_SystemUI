.class public interface abstract Lcom/samsung/systemui/splugins/volume/VolumeStar;
.super Ljava/lang/Object;
.source "VolumeStar.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.volume.PLUGIN"
    version = 0x3e9
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.volume.PLUGIN"

.field public static final MAJOR_VERSION:I = 0x1

.field public static final MINOR_VERSION:I = 0x1

.field public static final VERSION:I = 0x3e9


# virtual methods
.method public abstract init(Landroid/content/Context;Landroid/content/Context;Lcom/samsung/systemui/splugins/volume/VolumeStarDependency;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
