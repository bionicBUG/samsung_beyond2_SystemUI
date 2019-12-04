.class public Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;
.super Ljava/lang/Object;
.source "MultiWindowManagerWrapper.java"


# static fields
.field private static final sInstance:Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;


# instance fields
.field private final mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;

    return-object v0
.end method
