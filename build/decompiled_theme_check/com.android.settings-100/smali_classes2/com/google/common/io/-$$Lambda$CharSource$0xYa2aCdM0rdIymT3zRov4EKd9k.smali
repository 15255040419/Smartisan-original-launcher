.class public final synthetic Lcom/google/common/io/-$$Lambda$CharSource$0xYa2aCdM0rdIymT3zRov4EKd9k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/io/BufferedReader;


# direct methods
.method public synthetic constructor <init>(Ljava/io/BufferedReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/io/-$$Lambda$CharSource$0xYa2aCdM0rdIymT3zRov4EKd9k;->f$0:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/io/-$$Lambda$CharSource$0xYa2aCdM0rdIymT3zRov4EKd9k;->f$0:Ljava/io/BufferedReader;

    invoke-static {p0}, Lcom/google/common/io/CharSource;->lambda$lines$0(Ljava/io/BufferedReader;)V

    return-void
.end method
