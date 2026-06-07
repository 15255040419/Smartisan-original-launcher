.class public interface abstract Lokhttp3/internal/io/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field public static final SYSTEM:Lokhttp3/internal/io/FileSystem;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/io/FileSystem$a;

    invoke-direct {v0}, Lokhttp3/internal/io/FileSystem$a;-><init>()V

    sput-object v0, Lokhttp3/internal/io/FileSystem;->SYSTEM:Lokhttp3/internal/io/FileSystem;

    return-void
.end method


# virtual methods
.method public abstract appendingSink(Ljava/io/File;)Lokio/Sink;
.end method

.method public abstract delete(Ljava/io/File;)V
.end method

.method public abstract deleteContents(Ljava/io/File;)V
.end method

.method public abstract exists(Ljava/io/File;)Z
.end method

.method public abstract rename(Ljava/io/File;Ljava/io/File;)V
.end method

.method public abstract sink(Ljava/io/File;)Lokio/Sink;
.end method

.method public abstract size(Ljava/io/File;)J
.end method

.method public abstract source(Ljava/io/File;)Lokio/Source;
.end method
