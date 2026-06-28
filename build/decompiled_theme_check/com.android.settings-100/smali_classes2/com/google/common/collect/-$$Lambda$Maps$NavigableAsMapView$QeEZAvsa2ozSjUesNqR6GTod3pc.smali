.class public final synthetic Lcom/google/common/collect/-$$Lambda$Maps$NavigableAsMapView$QeEZAvsa2ozSjUesNqR6GTod3pc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$NavigableAsMapView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Maps$NavigableAsMapView$QeEZAvsa2ozSjUesNqR6GTod3pc;->f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Maps$NavigableAsMapView$QeEZAvsa2ozSjUesNqR6GTod3pc;->f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$NavigableAsMapView;->lambda$entrySpliterator$0$Maps$NavigableAsMapView(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
