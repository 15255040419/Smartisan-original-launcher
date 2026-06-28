.class public final synthetic Lcom/google/common/primitives/-$$Lambda$WS9wTzcqMM_7dGjLt3km_ukixD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Lcom/google/common/primitives/ImmutableIntArray$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/primitives/ImmutableIntArray$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/primitives/-$$Lambda$WS9wTzcqMM_7dGjLt3km_ukixD8;->f$0:Lcom/google/common/primitives/ImmutableIntArray$Builder;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/primitives/-$$Lambda$WS9wTzcqMM_7dGjLt3km_ukixD8;->f$0:Lcom/google/common/primitives/ImmutableIntArray$Builder;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->add(I)Lcom/google/common/primitives/ImmutableIntArray$Builder;

    return-void
.end method
