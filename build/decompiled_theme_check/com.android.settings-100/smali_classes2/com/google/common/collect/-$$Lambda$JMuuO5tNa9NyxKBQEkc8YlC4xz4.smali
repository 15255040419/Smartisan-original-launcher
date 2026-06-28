.class public final synthetic Lcom/google/common/collect/-$$Lambda$JMuuO5tNa9NyxKBQEkc8YlC4xz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$JMuuO5tNa9NyxKBQEkc8YlC4xz4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$JMuuO5tNa9NyxKBQEkc8YlC4xz4;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$JMuuO5tNa9NyxKBQEkc8YlC4xz4;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$JMuuO5tNa9NyxKBQEkc8YlC4xz4;->INSTANCE:Lcom/google/common/collect/-$$Lambda$JMuuO5tNa9NyxKBQEkc8YlC4xz4;

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

    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p0

    return-object p0
.end method
