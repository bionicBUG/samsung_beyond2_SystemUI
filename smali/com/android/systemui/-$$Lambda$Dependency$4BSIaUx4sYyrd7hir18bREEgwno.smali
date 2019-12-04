.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$4BSIaUx4sYyrd7hir18bREEgwno;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$4BSIaUx4sYyrd7hir18bREEgwno;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$Dependency$4BSIaUx4sYyrd7hir18bREEgwno;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$Dependency$4BSIaUx4sYyrd7hir18bREEgwno;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$Dependency$4BSIaUx4sYyrd7hir18bREEgwno;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$4BSIaUx4sYyrd7hir18bREEgwno;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/Dependency;->lambda$onConfigurationChanged$9(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
