.class public final synthetic Lcom/google/common/collect/-$$Lambda$Maps$AsMapView$g9v_3LymatxQlAQeGCWPUc7zV-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/google/common/collect/Maps$AsMapView;

.field private final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$AsMapView;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Maps$AsMapView$g9v_3LymatxQlAQeGCWPUc7zV-o;->f$0:Lcom/google/common/collect/Maps$AsMapView;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$Maps$AsMapView$g9v_3LymatxQlAQeGCWPUc7zV-o;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Maps$AsMapView$g9v_3LymatxQlAQeGCWPUc7zV-o;->f$0:Lcom/google/common/collect/Maps$AsMapView;

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Maps$AsMapView$g9v_3LymatxQlAQeGCWPUc7zV-o;->f$1:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/Maps$AsMapView;->lambda$forEach$0$Maps$AsMapView(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method
