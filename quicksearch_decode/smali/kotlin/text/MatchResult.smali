.class public interface abstract Lkotlin/text/MatchResult;
.super Ljava/lang/Object;
.source "MatchResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/MatchResult$a;
    }
.end annotation


# virtual methods
.method public abstract getDestructured()Lkotlin/text/MatchResult$a;
.end method

.method public abstract getGroupValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroups()Lkotlin/text/MatchGroupCollection;
.end method

.method public abstract getRange()Ld/s/c;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract next()Lkotlin/text/MatchResult;
.end method
