.class public final synthetic Lcom/google/common/collect/-$$Lambda$y3UzC9Ucub3hbmrgNozGHDddSDo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/stream/LongStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/LongStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$y3UzC9Ucub3hbmrgNozGHDddSDo;->f$0:Ljava/util/stream/LongStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$y3UzC9Ucub3hbmrgNozGHDddSDo;->f$0:Ljava/util/stream/LongStream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method
