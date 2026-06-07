.class public final synthetic Lb/c/a/c/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lb/c/a/c/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/c/a/c/a;

    invoke-direct {v0}, Lb/c/a/c/a;-><init>()V

    sput-object v0, Lb/c/a/c/a;->a:Lb/c/a/c/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
