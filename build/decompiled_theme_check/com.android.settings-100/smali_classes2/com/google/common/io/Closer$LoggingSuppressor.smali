.class final Lcom/google/common/io/Closer$LoggingSuppressor;
.super Ljava/lang/Object;
.source "Closer.java"

# interfaces
.implements Lcom/google/common/io/Closer$Suppressor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Closer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LoggingSuppressor"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/io/Closer$LoggingSuppressor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 245
    new-instance v0, Lcom/google/common/io/Closer$LoggingSuppressor;

    invoke-direct {v0}, Lcom/google/common/io/Closer$LoggingSuppressor;-><init>()V

    sput-object v0, Lcom/google/common/io/Closer$LoggingSuppressor;->INSTANCE:Lcom/google/common/io/Closer$LoggingSuppressor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public suppress(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    .line 250
    sget-object p0, Lcom/google/common/io/Closeables;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppressing exception thrown when closing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
