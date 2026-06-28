.class public final synthetic Lcom/google/common/collect/-$$Lambda$ki6G207kprHsN7dV-JVjhPKT0bs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ki6G207kprHsN7dV-JVjhPKT0bs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ki6G207kprHsN7dV-JVjhPKT0bs;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ki6G207kprHsN7dV-JVjhPKT0bs;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ki6G207kprHsN7dV-JVjhPKT0bs;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ki6G207kprHsN7dV-JVjhPKT0bs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p0

    return-object p0
.end method
